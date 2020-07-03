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
end
