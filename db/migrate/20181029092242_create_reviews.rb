class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :book_id
      t.text :content
      t.integer :rating
      t.references :user, forign_key: true
      t.references :book, forign_key: true

      t.timestamps
    end
  end
end
