class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :event_name
      t.string :event_description
      t.text :event_location
      t.datetime :event_date
      t.timestamps
    end
  end
end
