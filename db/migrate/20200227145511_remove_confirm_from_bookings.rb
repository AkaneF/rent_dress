class RemoveConfirmFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :confirm, :boolean
  end
end
