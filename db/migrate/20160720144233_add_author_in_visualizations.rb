class AddAuthorInVisualizations < ActiveRecord::Migration[5.0]
  def change
    add_column :visualizations, :created_by_id, :integer, index: true
  end
end
