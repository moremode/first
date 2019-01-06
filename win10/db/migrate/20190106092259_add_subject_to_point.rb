class AddSubjectToPoint < ActiveRecord::Migration[5.2]
  def change
    add_reference :points, :subjects
  end
end
