class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :client_name, null: false
      t.string :email, null: false
      t.string :near_station
      t.string :parking_address, null: false
      t.integer :parking_present, null: false
      t.integer :year_period
      t.integer :month_period
      t.integer :parking_present
      t.integer :cancellation_money
      t.integer :rent
      t.integer :tax_type
      t.integer :land_estate
      t.integer :parking_possible_number
      t.integer :parking_size
      t.integer :parling_size_unit
      t.date :start_date
      t.date :end_date
      t.integer :desired_rent
      t.text :client_textarea
      t.text :user_textarea
      t.references :user, foreign_key: true
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :posts, :client_name
  end
end
