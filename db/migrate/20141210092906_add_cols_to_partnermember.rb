class AddColsToPartnermember < ActiveRecord::Migration
  def change
    add_column :partnermembers, :partner_id, :integer
  end
end
