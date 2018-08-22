class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :state, default: 0
      t.references :user
      t.references :job

      t.timestamps
    end
  end
end
