class CreatePresentationSubareas < ActiveRecord::Migration[6.1]
  def change
    create_table :presentation_subareas do |t|
      t.string :name
      t.references :presentation_area, null: false, foreign_key: true
      t.string :nombre

      t.timestamps
    end
  end
end
