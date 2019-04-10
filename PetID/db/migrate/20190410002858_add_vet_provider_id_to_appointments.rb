class AddVetProviderIdToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :vet_provider, foreign_key: true
  end
end
