class AddDefaultToPosts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :midterm_cancellation, true
  end
end
