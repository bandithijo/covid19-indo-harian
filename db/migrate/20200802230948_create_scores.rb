class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.date  :tanggal
      t.text  :data, array: true, default: []
    end
  end
end
