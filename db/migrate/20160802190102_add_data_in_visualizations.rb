class AddDataInVisualizations < ActiveRecord::Migration[5.0]
  def change
    add_column :visualizations, :data, :text
  end
end
