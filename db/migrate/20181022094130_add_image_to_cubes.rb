class AddImageToCubes < ActiveRecord::Migration[5.2]
  def change
    add_column :cubes, :image, :string
  end
end
