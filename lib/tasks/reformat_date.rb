# frozen_string_literal: true

module ReformatDate
  def self.convert(data_fetched_at)
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
end
