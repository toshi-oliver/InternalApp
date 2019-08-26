class RenameParlingSizeUnitColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :parling_size_unit, :parking_size_unit
  end
end
