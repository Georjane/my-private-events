class Event < ApplicationRecord
  belongs_to :event_creator, class_name: "User"
  has_many :event_attendees, through: :attend, source: :attended_event
end
