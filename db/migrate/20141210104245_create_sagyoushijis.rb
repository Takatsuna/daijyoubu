class CreateSagyoushijis < ActiveRecord::Migration
  def change
    create_table :sagyoushijis do |t|
      t.integer :itakuhaken_id
      t.integer :sagyouhoukoku_id
      t.string :atena
      t.string :sashidashi
      t.text :jisshinaiyou
      t.boolean :sumi
      t.string :nengetsu

      t.timestamps
    end
  end
end
