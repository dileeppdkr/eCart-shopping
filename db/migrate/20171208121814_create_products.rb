class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :sold_out #b
      t.string :category
      t.boolean :under_sale #b
      t.integer :price #i
      t.integer :sale_price #i
      t.string :sale_text
      t.string :image_url
      t.integer :status

      t.timestamps
    end
  end
end
