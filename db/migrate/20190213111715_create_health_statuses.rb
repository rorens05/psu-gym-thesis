class CreateHealthStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :health_statuses do |t|
      t.references :day, foreign_key: true
      t.decimal :height, default: 0, :precision => 8, :scale => 2
      t.decimal :weight, default: 0, :precision => 8, :scale => 2
      t.string :blood_pressure, default: '120/80'
      t.integer :sugar, default: 0
      t.decimal :waist_line, default: 0

      t.timestamps
    end
  end
end
