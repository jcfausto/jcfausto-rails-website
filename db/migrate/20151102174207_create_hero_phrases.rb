class CreateHeroPhrases < ActiveRecord::Migration
  def change
    create_table :hero_phrases do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
