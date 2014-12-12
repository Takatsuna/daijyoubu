class RemoveColFromSagyoushijis < ActiveRecord::Migration
  def change
    remove_column :sagyoushijis, :hakkoubi, :string
  end
end
