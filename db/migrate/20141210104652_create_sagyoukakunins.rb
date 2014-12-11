class CreateSagyoukakunins < ActiveRecord::Migration
  def change
    create_table :sagyoukakunins do |t|
      t.integer :sagyouhoukoku_id
      t.string :atena
      t.string :sashidashi
      t.boolean :sumi
      t.string :nengetsu

      t.timestamps
    end
  end
end
