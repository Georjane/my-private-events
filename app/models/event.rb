class Event < ApplicationRecord
  belongs_to :event_creator, class_name: "User"
end
