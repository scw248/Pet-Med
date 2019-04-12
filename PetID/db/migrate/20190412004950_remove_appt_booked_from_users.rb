class RemoveApptBookedFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :appt_booked, :boolean
  end
end
