class User < ActiveRecord::Base
  
  attr_accessor :password_confirmation
  
  # -- Relationships --------------------------------------------------------
  has_many :messages,
    :dependent => :destroy
  has_many :topics
    
  # -- Validations -----------------------------------------------------------
  validates :username,
    :presence   => true,
    :uniqueness => true
  
  validates :email,
    :presence   => true,
    :format     => { :with => /^([\w.%-+]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
    :uniqueness => true
                        
  validates :password,
    :presence     => {:if => lambda{|u| u.new_record?}},
    :confirmation => true
  
end
