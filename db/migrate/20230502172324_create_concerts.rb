class CreateConcerts < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.references :singer, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true
      t.date :date
      t.datetime :start_time
      t.datetime :end_time
      t.integer :platinum_ticket_price
      t.integer :gold_ticket_price
      t.integer :siliver_ticket_price

      t.timestamps
    end
  end
end
