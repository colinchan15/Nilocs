class AddUserIdToCubes < ActiveRecord::Migration[5.2]
  def change
    add_column :cubes, :user_id, :integer
  end
end
