class RemoveColsFromJyucyu < ActiveRecord::Migration
  def change
    remove_column :jyucyus, :tantouteam, :string
  end
end
