class CreateVisualizations < ActiveRecord::Migration
  def change
    create_table :visualizations do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
