require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    Capybara.javascript_driver = :cuprite
    Capybara.register_driver(:cuprite) do |app|
      Capybara::Cuprite::Driver.new(app, browser_options: { "no-sandbox": nil })
    end
  end
  test "viewing the index" do
    visit users_path
    assert_selector "h1", text: "Users"
  end
end
