class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :kihonkeiyaku

      t.timestamps
    end
  end
end
