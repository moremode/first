class UserLevelRollback < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :level_id
    add_reference :users, :level
  end
end
