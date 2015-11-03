class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :title
      t.string :description
      t.integer :order

      t.timestamps null: false
    end
  end
end
