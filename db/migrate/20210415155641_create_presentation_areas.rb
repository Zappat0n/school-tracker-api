class CreatePresentationAreas < ActiveRecord::Migration[6.1]
  def change
    create_table :presentation_areas do |t|
      t.string :name
      t.string :nombre

      t.timestamps
    end
  end
end
