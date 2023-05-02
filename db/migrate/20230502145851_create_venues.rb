class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :location
      t.string :img_url
      t.string :name
      t.references :company, null: false, foreign_key: true
      t.integer :platinaum_seat_count
      t.integer :gold_seats_count
      t.integer :siliver_seats_count

      t.timestamps
    end
  end
end
