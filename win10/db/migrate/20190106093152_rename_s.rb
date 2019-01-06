class RenameS < ActiveRecord::Migration[5.2]
  def change
    rename_column :points, :subjects_id, :subject_id
  end
end
