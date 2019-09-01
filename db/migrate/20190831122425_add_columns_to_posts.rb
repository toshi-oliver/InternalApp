class AddColumnsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :phone_number, :integer
    add_column :posts, :contract_company, :string
    add_column :posts, :cancellation_period, :integer
  end
end
