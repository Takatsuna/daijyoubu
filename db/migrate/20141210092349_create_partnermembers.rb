class CreatePartnermembers < ActiveRecord::Migration
  def change
    create_table :partnermembers do |t|
      t.string :shimeicode
      t.string :name

      t.timestamps
    end
  end
end
