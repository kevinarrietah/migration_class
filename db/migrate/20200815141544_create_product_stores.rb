class CreateProductStores < ActiveRecord::Migration[5.2]
  def change
    create_table :product_stores do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :store, foreign_key: true

      t.timestamps
    end
  end
end
