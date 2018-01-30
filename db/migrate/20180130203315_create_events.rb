class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :organizer
      t.string :url
      t.datetime :startTime
      t.datetime :endTime
      t.string :price
      t.string :category
      t.boolean :rsvp

      t.timestamps
    end
  end
end
