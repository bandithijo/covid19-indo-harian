# frozen_string_literal: true

module ScraperCase
  require_relative './reformat_date'

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

  data_input = Case.new(
    positif_covid:   data[:positif_covid],
    sembuh_covid:    data[:sembuh_covid],
    meninggal_covid: data[:meninggal_covid],
    jumlah_suspek:   data[:jumlah_suspek],
    jumlah_spesimen: data[:jumlah_spesimen],
    fetched_at:      ReformatDate.convert(data[:fetched_at])
  )

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

  if data_input.valid?
    if (data_input.fetched_at != data_local_last&.fetched_at) &&
       (data_input.positif_covid != data_local_last&.positif_covid)
      data_input.save
      puts "+-------------------+\n| DATA KASUS HARIAN |\n+-------------------+"
      puts 'INFO: DATA TERBARU BERHASIL DIINPUTKAN KE DALAM DATABASE!'
      puts "Total Pasien Positif (REMOTE): #{data_input.positif_covid}"
      puts "Total Pasien Positif (LOCAL) : #{data_local_last.positif_covid}"
      puts 'INFO: PERKEMBANGAN DATA HARI INI & KEMARIN'
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
      puts "+-------------------+\n| DATA KASUS HARIAN |\n+-------------------+"
      puts 'INFO: BELUM ADA DATA BARU UNTUK HARI INI!'
      puts "Total Pasien Positif (REMOTE): #{data_input.positif_covid}" \
        + " (#{data_input.fetched_at})"
      puts "Total Pasien Positif (LOCAL) : #{data_local_last.positif_covid}" \
        + " (#{data_local_last.fetched_at})"
      puts 'INFO: PERKEMBANGAN DATA HARI INI & KEMARIN'
      puts "Total Pasien Positif Baru    : #{data_old_positif_covid}"
      puts "Total Pasien Sembuh Baru     : #{data_old_sembuh_covid}"
      puts "Total Pasien Meninggal Baru  : #{data_old_meninggal_covid}"
      puts "Total Suspek                 : #{data_old_jumlah_suspek}"
      puts "Total Spesimen               : #{data_old_jumlah_spesimen}"
    end
  else
    puts "+-------------------+\n| DATA KASUS HARIAN |\n+-------------------+"
    puts 'INFO: Data tidak valid!'
    puts data_input.errors.messages
  end
end
