class CreatePresentations < ActiveRecord::Migration[6.1]
  def change
    create_table :presentations do |t|
      t.string :name
      t.references :presentation_subarea, null: false, foreign_key: true
      t.float :year
      t.integer :priority
      t.string :nombre

      t.timestamps
    end
  end
end
