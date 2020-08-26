# frozen_string_literal: true

task run_scraping: :environment do
  run_scraping
rescue ActiveRecord::NoDatabaseError
  puts 'WARNING: BELUM CREATE DATABASE'
  puts "CREATE DATABASE: 'web_scraper_development'\n"
  rake_run('db:create')
  puts "DATABASE CREATED\n"
  puts 'WARNING: BELUM CREATE SCHEME'
  puts "RUN MIGRATION: 'covid_kemkes_pasien'\n"
  rake_run('db:migrate')
  puts "MIGRATION MIGRATED\n"
  sleep 5
  run_scraping
rescue ActiveRecord::StatementInvalid
  puts 'WARNING: BELUM CREATE SCHEME'
  puts "RUN MIGRATION: 'covid_kemkes_pasien'\n"
  sleep 3
  rake_run('db:migrate')
  puts "MIGRATION MIGRATED\n"
  run_scraping
rescue PG::ConnectionBad
  puts 'WARNING: POSTGRESQL SERVICE BELUM ACTIVE & RUNNING'
  puts "Silahkan menjalankan PostgreSQL service terlebih dahulu\n"
end

def reformat_date(data_fetched_at)
  dft = data_fetched_at.split
  if %w[Januari JANUARI].include? dft[1]
    dft[1] = '01'
  elsif %w[Februari FEBRUARI].include? dft[1]
    dft[1] = '02'
  elsif %w[Maret MARET].include? dft[1]
    dft[1] = '03'
  elsif %w[April APRIL].include? dft[1]
    dft[1] = '04'
  elsif %w[Mei MEI].include? dft[1]
    dft[1] = '05'
  elsif %w[Juni JUNI].include? dft[1]
    dft[1] = '06'
  elsif %w[Juli JULI].include? dft[1]
    dft[1] = '07'
  elsif %w[Agustus AGUSTUS].include? dft[1]
    dft[1] = '08'
  elsif %w[September SEPTEMBER].include? dft[1]
    dft[1] = '09'
  elsif %w[Oktober OKTOBER].include? dft[1]
    dft[1] = '10'
  elsif %w[November NOVEMBER].include? dft[1]
    dft[1] = '11'
  elsif %w[Desember DESEMBER].include? dft[1]
    dft[1] = '12'
  end
  "#{dft[2]}-#{dft[1]}-#{dft[0]}"
end

def run_scraping
  begin
    target_url     = 'https://kemkes.go.id/'
    unparsed_page  = HTTParty.get(target_url)
    parsed_page    = Nokogiri::HTML(unparsed_page)

    data = {
      positif_covid:   parsed_page.css('td')[2].text.gsub('.', '').to_i,
      sembuh_covid:    parsed_page.css('td')[5].text.gsub('.', '').to_i,
      meninggal_covid: parsed_page.css('td')[8].text.gsub('.', '').to_i,
      jumlah_suspek:   parsed_page.css('td')[11].text.gsub('.', '').to_i,
      jumlah_spesimen: parsed_page.css('td')[14].text.gsub('.', '').to_i,
      fetched_at:      parsed_page.css('li.info-date').text.gsub('Kondisi', '').strip
    }
  rescue StandardError => e
    puts "ERROR: #{e.message}"
    exit
  end

  begin
    zona_target_url     = 'https://data.covid19.go.id/public/api/skor.json'
    zona_unparsed_page  = HTTParty.get(zona_target_url)
    zona_date           = zona_unparsed_page.parsed_response['tanggal']
    zona_data           = zona_unparsed_page.parsed_response['data']
  rescue StandardError => e
    puts "ERROR: #{e.message}"
    exit
  end

  data_zona_input = Score.new(
    tanggal: reformat_date(zona_date),
    data: zona_data
  )

  # byebug

  data_input = Case.new(
    positif_covid:   data[:positif_covid],
    sembuh_covid:    data[:sembuh_covid],
    meninggal_covid: data[:meninggal_covid],
    jumlah_suspek:   data[:jumlah_suspek],
    jumlah_spesimen: data[:jumlah_spesimen],
    fetched_at:      reformat_date(data[:fetched_at])
  )

  if Case.all.empty? || Score.all.empty?
    puts 'PERHATIAN: Database Kosong'
    puts 'Program akan menjalankan proses seeding...'
    sleep 3
    rake_run('db:seed')
    puts 'SEEDING BERHASIL!'
    sleep 3
    puts ''
  end

  data_zona_local_last = Score.all.last

  data_local_last          = Case.all.last
  data_local_before_last   = Case.all[-2]
  data_new_positiv_covid   = data_input.positif_covid - data_local_last.positif_covid
  data_new_sembuh_covid    = data_input.sembuh_covid - data_local_last.sembuh_covid
  data_new_meninggal_covid = data_input.meninggal_covid - data_local_last.meninggal_covid
  data_new_jumlah_suspek   = data_input.jumlah_suspek - data_local_last.jumlah_suspek
  data_new_jumlah_spesimen = data_input.jumlah_spesimen - data_local_last.jumlah_spesimen
  data_old_positif_covid   = data_local_last.positif_covid - data_local_before_last.positif_covid
  data_old_sembuh_covid    = data_local_last.sembuh_covid - data_local_before_last.sembuh_covid
  data_old_meninggal_covid = data_local_last.meninggal_covid - data_local_before_last.meninggal_covid
  data_old_jumlah_suspek   = data_local_last.jumlah_suspek - data_local_before_last.jumlah_suspek
  data_old_jumlah_spesimen = data_local_last.jumlah_spesimen - data_local_before_last.jumlah_spesimen

  if data_zona_input.valid?
    if data_zona_input.tanggal != data_zona_local_last&.tanggal
      data_zona_input.save
      puts 'INFO: DATA ZONA TERBARU BERHASIL DIINPUTKAN KE DALAM DATABASE!'

      seeds_file = File.join(File.expand_path('..', __dir__), '..', 'db', 'seeds', 'score_seed.rb')
      File.open(seeds_file, 'a') do |f|
        f.puts "\ndata = Score.new("
        f.puts "  tanggal: '#{data_zona_input.tanggal}',"
        f.puts "  data:    #{data_zona_input.data}"
        f.puts ')'
        f.puts 'input_into_scores(data)'
        f.close
      end
    else
      puts 'INFO: BELUM ADA DATA ZONA BARU UNTUK HARI INI!'
    end
  else
    puts 'INFO: Data zona tidak valid!'
    puts data_zona_input.errors.messages
  end

  if data_input.valid?
    if (data_input.fetched_at != data_local_last&.fetched_at) &&
       (data_input.positif_covid != data_local_last&.positif_covid)
      data_input.save
      puts 'INFO: DATA TERBARU BERHASIL DIINPUTKAN KE DALAM DATABASE!'
      puts "Total Pasien Positif (REMOTE): #{data_input.positif_covid}"
      puts "Total Pasien Positif (LOCAL) : #{data_local_last.positif_covid}"
      puts 'PERKEMBANGAN DATA HARI INI & KEMARIN'
      puts "Total Pasien Positif Baru    : #{data_new_positiv_covid}"
      puts "Total Pasien Sembuh Baru     : #{data_new_sembuh_covid}"
      puts "Total Pasien Meninggal Baru  : #{data_new_meninggal_covid}"
      puts "Total Suspek                 : #{data_new_jumlah_suspek}"
      puts "Total Spesimen               : #{data_new_jumlah_spesimen}"

      seeds_file = File.join(File.expand_path('..', __dir__), '..', 'db', 'seeds', 'case_seed.rb')
      File.open(seeds_file, 'a') do |f|
        f.puts "\ndata = Case.new("
        f.puts "  positif_covid:   #{data_input.positif_covid},"
        f.puts "  sembuh_covid:    #{data_input.sembuh_covid},"
        f.puts "  meninggal_covid: #{data_input.meninggal_covid},"
        f.puts "  jumlah_suspek:   #{data_input.jumlah_suspek},"
        f.puts "  jumlah_spesimen: #{data_input.jumlah_spesimen},"
        f.puts "  fetched_at:      '#{data_input.fetched_at}'"
        f.puts ')'
        f.puts 'input_into_cases(data)'
        f.close
      end
    else
      puts 'INFO: BELUM ADA DATA BARU UNTUK HARI INI!'
      puts "Total Pasien Positif (REMOTE): #{data_input.positif_covid}" \
                                           + " (#{data_input.fetched_at})"
      puts "Total Pasien Positif (LOCAL) : #{data_local_last.positif_covid}" \
                                           + " (#{data_local_last.fetched_at})"
      puts 'PERKEMBANGAN DATA HARI INI & KEMARIN'
      puts "Total Pasien Positif Baru    : #{data_old_positif_covid}"
      puts "Total Pasien Sembuh Baru     : #{data_old_sembuh_covid}"
      puts "Total Pasien Meninggal Baru  : #{data_old_meninggal_covid}"
      puts "Total Suspek                 : #{data_old_jumlah_suspek}"
      puts "Total Spesimen               : #{data_old_jumlah_spesimen}"
    end
  else
    puts 'INFO: Data tidak valid!'
    puts data_input.errors.messages
  end
end
