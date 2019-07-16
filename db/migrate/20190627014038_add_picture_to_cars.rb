class AddPictureToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :picture, :string
  end
end
