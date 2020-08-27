class AddPreviousDataToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :data_prev, :text, array: true, default: []
  end
end
