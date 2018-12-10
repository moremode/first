class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.integer :born_year
      t.integer :death_year
      t.string :champs_years
      t.string :picture_num
      t.string :wiki_page

      t.timestamps
    end
  end
end
