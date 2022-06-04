class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :date
      t.string :booking_type
      t.references :game, null: false, foreign_key: true
      t.string :result
      t.boolean :status
      t.integer :creator_trust
      t.integer :player_trust
      t.integer :creator_id
      t.integer :player_id
      t.timestamps
    end
  end
end
