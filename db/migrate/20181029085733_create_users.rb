class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :role, null: false, default: 0
      t.string :password_digest
      t.string :remember_digest
      t.string :picture
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
