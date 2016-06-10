class CreateSnares < ActiveRecord::Migration
  def change
    create_table :snares do |t|
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
