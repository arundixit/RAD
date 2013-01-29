class CreateAdRates < ActiveRecord::Migration
  def change
    create_table :ad_rates do |t|
      t.integer :ad_space_id
      t.decimal :rate
      t.integer :frequency_id

      t.timestamps
    end
  end
end
