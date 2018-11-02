class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :review_id
      t.integer :parent_id
      t.text :content
      t.references :user, foriegn_key: true
      t.references :review, foriegn_key: true

      t.timestamps
    end
  end
end
