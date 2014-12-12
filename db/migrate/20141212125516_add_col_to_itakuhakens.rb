class AddColToItakuhakens < ActiveRecord::Migration
  def change
    add_column :itakuhakens, :jisshinaiyou, :text
  end
end
