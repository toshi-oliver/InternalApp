class ChangeDefaultToPostsUserId < ActiveRecord::Migration[5.2]
  def change
    change_column_default :posts, :user_id, nil
  end
end
