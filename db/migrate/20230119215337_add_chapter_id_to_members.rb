class AddChapterIdToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :chapter_id, :integer
  end
end
