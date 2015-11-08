class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.datetime :when
      t.string :what

      t.timestamps null: false
    end
  end
end
