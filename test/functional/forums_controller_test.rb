require 'test_helper'

class ForumsControllerTest < ActionController::TestCase

  def test_get_index
    get :index
    
    assert_response :success
    assert assigns(:forums)
  end

  def test_get_show
    forum = forums(:default)
    get :show, :id => forum.id
    
    assert_response :success
    assert assigns(:forum)
  end

end
