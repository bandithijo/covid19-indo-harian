# frozen_string_literal: true

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

data_zona_local_last = Score.all.last

if data_zona_input.valid?
  if data_zona_input.tanggal != data_zona_local_last&.tanggal || data_zona_input.data != data_zona_local_last&.data
    data_zona_input.save
    puts "+------------------+\n| DATA ZONA RISIKO |\n+------------------+"
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
    puts "+------------------+\n| DATA ZONA RISIKO |\n+------------------+"
    puts 'INFO: BELUM ADA DATA ZONA BARU UNTUK HARI INI!'
  end
else
  puts "+------------------+\n| DATA ZONA RISIKO |\n+------------------+"
  puts 'INFO: Data zona tidak valid!'
  puts data_zona_input.errors.messages
end
