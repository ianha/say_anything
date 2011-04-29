class Topic < ActiveRecord::Base
  
  # -- Relationships --------------------------------------------------------
  belongs_to :forum
  belongs_to :user
  has_many :messages,
    :dependent => :destroy
    
  # -- Validations ----------------------------------------------------------
  validates_presence_of :title,
                        :user_id,
                        :forum_id
  
end
