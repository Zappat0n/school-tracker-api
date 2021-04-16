class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.date :date
      t.references :student, null: false, foreign_key: true
      t.references :presentation, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
