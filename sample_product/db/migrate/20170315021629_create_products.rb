class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :code, :limit => 10, :null => false
      t.string :name, :limit => 50, :null => false 
      t.string :name_kana, :limit => 50, :default => ""
      t.integer :price, :null => false
      t.integer :purchase_cost, :null => false
      t.boolean :availability, :null => false

      t.timestamps
    end
  end
end
