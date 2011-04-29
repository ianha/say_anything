class Message < ActiveRecord::Base
  
  # -- Relationships --------------------------------------------------------
  belongs_to :topic
  belongs_to :user
  
  # -- Validations ----------------------------------------------------------
  validates_presence_of :content,
                        :user_id,
                        :topic_id
  
end
