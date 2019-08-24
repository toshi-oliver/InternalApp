class AddParkingPresentToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :parking_present, :boolean, default: true, null: false
  end
end
