task :run_scraping => :environment do
  begin
    run_scraping
  rescue ActiveRecord::NoDatabaseError
    puts "WARNING: BELUM CREATE DATABASE"
    puts "CREATE DATABASE: 'web_scraper_development'\n"
    rake_run("db:create")
    puts "DATABASE CREATED\n"
    puts "WARNING: BELUM CREATE SCHEME"
    puts "RUN MIGRATION: 'covid_kemkes_pasien'\n"
    rake_run("db:migrate")
    puts "MIGRATION MIGRATED\n"
    sleep 5
    run_scraping
  rescue ActiveRecord::StatementInvalid
    puts "WARNING: BELUM CREATE SCHEME"
    puts "RUN MIGRATION: 'covid_kemkes_pasien'\n"
    sleep 3
    rake_run("db:migrate")
    puts "MIGRATION MIGRATED\n"
    run_scraping
  rescue PG::ConnectionBad
    puts "WARNING: POSTGRESQL SERVICE BELUM ACTIVE & RUNNING"
    puts "Silahkan menjalankan PostgreSQL service terlebih dahulu\n"
  end
end

def run_scraping
  begin
    target_url     = "https://kemkes.go.id/"
    unparsed_page  = HTTParty.get(target_url)
    parsed_page    = Nokogiri::HTML(unparsed_page)

    data = {
      positif_covid:   parsed_page.css("td")[2].text.gsub(".", "").to_i,
      sembuh_covid:    parsed_page.css("td")[5].text.gsub(".", "").to_i,
      meninggal_covid: parsed_page.css("td")[8].text.gsub(".", "").to_i,
      jumlah_odp:      parsed_page.css("td")[11].text.gsub(".", "").to_i,
      jumlah_pdp:      parsed_page.css("td")[14].text.gsub(".", "").to_i,
    }
  rescue Exception => e
    puts "ERROR: #{e.message}"
    exit
  end

  data_input = Case.new(
    positif_covid:   data[:positif_covid],
    sembuh_covid:    data[:sembuh_covid],
    meninggal_covid: data[:meninggal_covid],
    jumlah_odp:      data[:jumlah_odp],
    jumlah_pdp:      data[:jumlah_pdp],
    fetched_at:      Date.today
  )

  if Case.all.size == 0
    puts "PERHATIAN: Database Kosong"
    puts "Program akan menjalankan proses seeding..."
    sleep 3
    rake_run("db:seed")
    puts "SEEDING BERHASIL!"
    sleep 3
    puts ""
  end

  data_local_last          = Case.all.last
  data_local_before_last   = Case.all[-2]
  data_new_positiv_covid   = data_input.positif_covid - data_local_last.positif_covid
  data_new_sembuh_covid    = data_input.sembuh_covid - data_local_last.sembuh_covid
  data_new_meninggal_covid = data_input.meninggal_covid - data_local_last.meninggal_covid
  data_new_jumlah_odp      = data_input.jumlah_odp - data_local_last.jumlah_odp
  data_new_jumlah_pdp      = data_input.jumlah_pdp - data_local_last.jumlah_pdp
  data_old_positif_covid   = data_local_last.positif_covid - data_local_before_last.positif_covid
  data_old_sembuh_covid    = data_local_last.sembuh_covid - data_local_before_last.sembuh_covid
  data_old_meninggal_covid = data_local_last.meninggal_covid - data_local_before_last.meninggal_covid
  data_old_jumlah_odp      = data_local_last.jumlah_odp - data_local_before_last.jumlah_odp
  data_old_jumlah_pdp      = data_local_last.jumlah_pdp - data_local_before_last.jumlah_pdp

  if data_input.valid?
    if (data_input.fetched_at != data_local_last.fetched_at) &&
       (data_input.positif_covid != data_local_last.positif_covid)
      data_input.save
      puts "INFO: DATA TERBARU BERHASIL DIINPUTKAN KE DALAM DATABASE!"
      puts "Total Pasien Positif (REMOTE): #{data_input.positif_covid}"
      puts "Total Pasien Positif (LOCAL) : #{data_local_last.positif_covid}"
      puts "PERKEMBANGAN DATA HARI INI & KEMARIN"
      puts "Total Pasien Positif Baru    : #{data_new_positiv_covid}"
      puts "Total Pasien Sembuh Baru     : #{data_new_sembuh_covid}"
      puts "Total Pasien Meninggal Baru  : #{data_new_meninggal_covid}"
      puts "Total ODP                    : #{data_new_jumlah_odp}"
      puts "Total PDP                    : #{data_new_jumlah_pdp}"

      seeds_file = File.join(File.expand_path('../..', __FILE__), '..', 'db', 'seeds.rb')
      # byebug
      File.open(seeds_file, "a") do |f|
        f.puts "\ndata = Case.create("
        f.puts "  positif_covid:   #{data_input.positif_covid},"
        f.puts "  sembuh_covid:    #{data_input.sembuh_covid},"
        f.puts "  meninggal_covid: #{data_input.meninggal_covid},"
        f.puts "  jumlah_odp:      #{data_input.jumlah_odp},"
        f.puts "  jumlah_pdp:      #{data_input.jumlah_pdp},"
        f.puts "  fetched_at:      '#{data_input.fetched_at}'"
        f.puts ")"
        f.puts "puts \"Insert data => \#\{data.fetched_at\}\""
        f.close
      end
    else
      puts "INFO: BELUM ADA DATA BARU UNTUK HARI INI!"
      puts "Total Pasien Positif (REMOTE): #{data_input.positif_covid}" \
                                           + " (#{data_input.fetched_at})"
      puts "Total Pasien Positif (LOCAL) : #{data_local_last.positif_covid}" \
                                           + " (#{data_local_last.fetched_at})"
      puts "PERKEMBANGAN DATA HARI INI & KEMARIN"
      puts "Total Pasien Positif Baru    : #{data_old_positif_covid}"
      puts "Total Pasien Sembuh Baru     : #{data_old_sembuh_covid}"
      puts "Total Pasien Meninggal Baru  : #{data_old_meninggal_covid}"
      puts "Total ODP                    : #{data_old_jumlah_odp}"
      puts "Total PDP                    : #{data_old_jumlah_pdp}"
    end
  else
    puts "INFO: Data tidak valid!"
    puts data_input.errors.messages
  end
end
