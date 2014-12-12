class AddCol2ToSagyoushijis < ActiveRecord::Migration
  def change
    add_column :sagyoushijis, :hakkoubi, :datetime
  end
end
