class AddColsToBusyo < ActiveRecord::Migration
  def change
    add_column :busyos, :hyoujiname, :string
  end
end
