class AddPetIdToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :pet_id, :integer
  end
end
