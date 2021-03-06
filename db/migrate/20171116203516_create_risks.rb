class CreateRisks < ActiveRecord::Migration[5.1]
  def change
    create_table :risks do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :category, null: false
      t.date :occured_at, null: false
      t.integer :danger_rate, null: false
      t.string :origin_type, null: false
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
