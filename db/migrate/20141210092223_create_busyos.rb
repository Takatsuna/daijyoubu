class CreateBusyos < ActiveRecord::Migration
  def change
    create_table :busyos do |t|
      t.string :name
      t.string :gl

      t.timestamps
    end
  end
end
