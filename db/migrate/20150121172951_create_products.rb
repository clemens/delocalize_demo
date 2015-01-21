class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.date :available_on
      t.datetime :available_until
      t.decimal :price, precision: 5, scale: 2

      t.timestamps null: false
    end
  end
end
