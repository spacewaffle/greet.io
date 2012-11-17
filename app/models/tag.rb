class Tag < ActiveRecord::Base
  attr_accessible :event_id, :user_at_event_ids, :tag
  
  belongs_to    :user_at_event
  belongs_to    :tag
end