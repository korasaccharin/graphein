class AddStyleInVisualizations < ActiveRecord::Migration[5.0]
  def change
    add_column :visualizations, :style, :string
  end
end
