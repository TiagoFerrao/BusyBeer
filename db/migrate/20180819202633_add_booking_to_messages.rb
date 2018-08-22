class AddBookingToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :booking, index: true
  end
end
