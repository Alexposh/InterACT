class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password
      t.references :user_roles, null: false, foreign_key: true

      t.timestamps
    end
  end
end
