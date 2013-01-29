class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.integer :user_id
      t.string :title
      t.text :code_details
      t.boolean :ispublished
      t.boolean :isapproved
      t.boolean :expiry_date

      t.timestamps
    end
  end
end
