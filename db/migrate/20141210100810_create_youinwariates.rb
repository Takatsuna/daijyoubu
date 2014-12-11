class CreateYouinwariates < ActiveRecord::Migration
  def change
    create_table :youinwariates do |t|
      t.integer :itakuhaken_id
      t.integer :partnermember_id

      t.timestamps
    end
  end
end
