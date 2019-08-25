class ChangeDatatypeTaxTypeLandEstateParkingSizeUnitOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :tax_type, :string
    change_column :posts, :land_estate, :string
    change_column :posts, :parking_size_unit, :string
  end
end
