class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :category
      t.string :title
      t.string :author
      t.text :description
      t.string :picture
      t.string :size
      t.decimal :price
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
