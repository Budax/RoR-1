require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "that index page is working" do
    get projects_path
    assert_response :success
  end

end
