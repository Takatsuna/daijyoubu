class CreateSagyouhoukokus < ActiveRecord::Migration
  def change
    create_table :sagyouhoukokus do |t|
      t.integer :sagyoushiji_id
      t.integer :sagyoukakunin_id
      t.string :atena
      t.string :sashidashi
      t.integer :youinjisseki_id
      t.text :jisshinaiyou
      t.boolean :sumi
      t.string :nengetsu

      t.timestamps
    end
  end
end
