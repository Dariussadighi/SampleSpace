class CreateKicks < ActiveRecord::Migration
  def change
    create_table :kicks do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
