class AddGenderToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :gender, :string
  end
end
