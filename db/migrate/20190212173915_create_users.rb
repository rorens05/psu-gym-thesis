class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.date :birthday
      t.string :contact_no
      t.integer :gender

      t.timestamps
    end
  end
end
