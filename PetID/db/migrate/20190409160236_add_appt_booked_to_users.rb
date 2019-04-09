class AddApptBookedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :appt_booked, :boolean, default: false
  end
end
