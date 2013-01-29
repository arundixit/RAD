class CreateAdSpaces < ActiveRecord::Migration
  def change
    create_table :ad_spaces do |t|
      t.text :length
      t.text :breadth
      t.text :position

      t.timestamps
    end
  end
end
