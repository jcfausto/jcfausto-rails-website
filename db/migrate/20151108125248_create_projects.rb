class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.attachment :image
      t.string :name
      t.string :url
      t.integer :order
      t.boolean :visible, :default => false

      t.timestamps null: false
    end
  end
end
