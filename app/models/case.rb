class Case < ApplicationRecord
  validates :positif_covid,
            presence: true,
            numericality: { only_integer: true}
  validates :sembuh_covid,
            presence: true,
            numericality: { only_integer: true}
  validates :meninggal_covid,
            presence: true,
            numericality: { only_integer: true}
  validates :jumlah_odp,
            presence: true,
            numericality: { only_integer: true}
  validates :jumlah_pdp,
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
end
