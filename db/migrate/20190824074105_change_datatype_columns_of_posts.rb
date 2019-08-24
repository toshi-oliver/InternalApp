class ChangeDatatypeColumnsOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :parking_present, :boolean, default: true, null: false
    rename_column :posts, :parking_present, :midterm_cancellation
    change_column :posts, :midterm_cancellation, :boolean, default: true
  end
end
