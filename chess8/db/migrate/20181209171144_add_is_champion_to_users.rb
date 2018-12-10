class AddIsChampionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_champion, :boolean
  end
end
