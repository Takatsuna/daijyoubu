class CreateKokyakus < ActiveRecord::Migration
  def change
    create_table :kokyakus do |t|
      t.string :name

      t.timestamps
    end
  end
end
