class Forum < ActiveRecord::Base
  
  # -- Relationships --------------------------------------------------------
  has_many :topics,
    :dependent => :destroy
  
  # -- Validations ----------------------------------------------------------
  validates_presence_of :title
  
end
