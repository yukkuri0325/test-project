class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :email
      t.string :password_digest
      t.string :age
      t.string :sex
      t.string :remember_token

      t.timestamps null: false
    end
  end
end
