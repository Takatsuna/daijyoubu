class CreateJyucyus < ActiveRecord::Migration
  def change
    create_table :jyucyus do |t|
      t.string :pjcode
      t.string :kenmei
      t.string :tantouteam
      t.string :pm
      t.datetime :start
      t.datetime :end
      t.integer :kokyaku_id
      t.string :keiyakusyubetsu

      t.timestamps
    end
  end
end
