class AddColToSagyoushijis < ActiveRecord::Migration
  def change
    add_column :sagyoushijis, :hakkoubi, :string
  end
end
