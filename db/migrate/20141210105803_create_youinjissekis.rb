class CreateYouinjissekis < ActiveRecord::Migration
  def change
    create_table :youinjissekis do |t|
      t.integer :youinwariate_id
      t.integer :sagyouhoukoku_id
      t.string :kadouhour
      t.string :kadoumin
      t.string :nengetsu

      t.timestamps
    end
  end
end
