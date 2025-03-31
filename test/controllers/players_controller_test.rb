require "test_helper"

class PlayersControllerTest < ActionDispatch::IntegrationTest
  test "should get me" do
    get players_me_url
    assert_response :success
  end
end
