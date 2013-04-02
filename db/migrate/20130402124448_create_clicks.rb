class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.integer :click_type_id
      t.integer :country_id
      t.integer :count

      t.timestamps
    end
  end
end
