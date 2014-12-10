class CreateItakuhakens < ActiveRecord::Migration
  def change
    create_table :itakuhakens do |t|
      t.string :kessaibango
      t.string :kessaikenmei
      t.datetime :start
      t.datetime :end
      t.string :ukeireninzu
      t.integer :jyucyu_id
      t.integer :partner_id

      t.timestamps
    end
  end
end
