class AddColsToJyucyu < ActiveRecord::Migration
  def change
    add_column :jyucyus, :busyo_id, :integer
    add_column :jyucyus, :jyucyukessaibango, :string
  end
end
