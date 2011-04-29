require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def test_fixtures_validity
    User.all.each do |user|
      assert user.valid?, user.errors.full_messages.to_s
    end
  end
  
  def test_validations
    flunk
  end
  
  def test_creation
    flunk
  end
  
end
