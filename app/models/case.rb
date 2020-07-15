class Case < ApplicationRecord
  after_create :calculate_todays_data

  validates :positif_covid, :sembuh_covid, :meninggal_covid, :jumlah_odp, :jumlah_pdp,
            :positif_covid_today, :sembuh_covid_today, :meninggal_covid_today,
            :jumlah_odp_today, :jumlah_pdp_today,
            presence: true,
            numericality: { only_integer: true}
  validates :fetched_at,
            presence: true

  def self.to_csv
    attributes = %w(id fetched_at positif_covid meninggal_covid
                    sembuh_covid jumlah_odp jumlah_pdp)

    CSV.generate(headers: true, col_sep: ";") do |csv|
      csv << attributes

      all.find_each do |kasus|
        csv << attributes.map{ |attr| kasus.send(attr) }
      end
    end
  end

  private

  def calculate_todays_data
    kasus_today     = Case.all[-1]
    kasus_yesterday = Case.all[-2]

    unless self.id == 1
      self.update!(
        positif_covid_today: (kasus_today.positif_covid - kasus_yesterday.positif_covid),
        sembuh_covid_today: (kasus_today.sembuh_covid - kasus_yesterday.sembuh_covid),
        meninggal_covid_today: (kasus_today.meninggal_covid - kasus_yesterday.meninggal_covid),
        jumlah_odp_today: (kasus_today.jumlah_odp - kasus_yesterday.jumlah_odp),
        jumlah_pdp_today: (kasus_today.jumlah_pdp - kasus_yesterday.jumlah_pdp),
        aktif: (kasus_today.positif_covid - (kasus_today.meninggal_covid + kasus_today.sembuh_covid))
      )
    end
  end
end
