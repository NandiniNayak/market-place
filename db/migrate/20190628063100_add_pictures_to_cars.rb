class AddPicturesToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :pictures, :string
  end
end
