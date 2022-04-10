class CreateCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :codes do |t|
      t.integer :zip_code
      t.string :locality, limit: 200
      t.string :federal_entity, limit: 200
      t.text :settlements
      t.string :municipality, limit: 200
      t.timestamps
    end
  end
end
