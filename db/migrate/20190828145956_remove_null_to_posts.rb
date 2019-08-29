class RemoveNullToPosts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :parking_present, true
  end
end
