class Event < ApplicationRecord
  belongs_to :event_creator, class_name: "User"
  
  has_many :attended_events, foreign_key: "attended_event_id", class_name: "Attend"
  has_many :event_attendees, through: :attended_events
end
