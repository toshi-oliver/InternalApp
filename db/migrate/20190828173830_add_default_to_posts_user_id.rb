class AddDefaultToPostsUserId < ActiveRecord::Migration[5.2]
  def change
    change_column_default :posts, :user_id, -1
  end
end
