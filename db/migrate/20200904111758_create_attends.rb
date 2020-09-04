class CreateAttends < ActiveRecord::Migration[6.0]
  def change
    create_table :attends do |t|
      t.references :event_attendee
      t.references :attended_event
      t.timestamps
    end
  end
end
