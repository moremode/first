class RemovePoints < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :points_id
  end
end
