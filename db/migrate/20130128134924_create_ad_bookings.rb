class CreateAdBookings < ActiveRecord::Migration
  def change
    create_table :ad_bookings do |t|
      t.integer :ad_id
      t.integer :ad_space_id
      t.integer :ad_rate_id
      t.date :from_date
      t.date :to_date
      t.decimal :amount
      t.boolean :ispaid

      t.timestamps
    end
  end
end
