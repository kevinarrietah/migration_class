class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.belongs_to :created_by, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
