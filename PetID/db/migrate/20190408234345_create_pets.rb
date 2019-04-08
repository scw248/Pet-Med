class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :animal_type
      t.string :breed
      t.string :gender
      t.date :birthdate
      t.integer :weight

      t.timestamps
    end
  end
end
