class CreateAdFrequencies < ActiveRecord::Migration
  def change
    create_table :ad_frequencies do |t|
      t.string :name

      t.timestamps
    end
  end
end
