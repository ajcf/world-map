class CreateClickTypes < ActiveRecord::Migration
  def change
    create_table :click_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
