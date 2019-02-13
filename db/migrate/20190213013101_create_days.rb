class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.integer :user_id
      t.text :note
      t.date :date_created
      t.integer :day_no, default: 0

      t.timestamps
    end
  end
end
