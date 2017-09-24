require './test/test_helper'

class AboutPageTest < CapybaraTestCase
  def test_user_sees_an_about_page
    visit '/about'

    assert page.has_content?("cool stuff")
    assert_equal 200, page.status_code
  end
end
