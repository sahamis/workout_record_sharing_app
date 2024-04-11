require "test_helper"

class ApplicationHelperTest < ActionView::TestCase

  test "full title helper" do
    assert_equal "Workout Record Sharing App", site_title
    assert_equal "Help | Workout Record Sharing App", site_title("Help")
  end
end