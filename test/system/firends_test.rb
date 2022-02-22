require "application_system_test_case"

class FirendsTest < ApplicationSystemTestCase
  setup do
    @firend = firends(:one)
  end

  test "visiting the index" do
    visit firends_url
    assert_selector "h1", text: "Firends"
  end

  test "should create firend" do
    visit firends_url
    click_on "New firend"

    fill_in "Email", with: @firend.email
    fill_in "First name", with: @firend.first_name
    fill_in "Last name", with: @firend.last_name
    fill_in "Phone", with: @firend.phone
    fill_in "Twitter", with: @firend.twitter
    click_on "Create Firend"

    assert_text "Firend was successfully created"
    click_on "Back"
  end

  test "should update Firend" do
    visit firend_url(@firend)
    click_on "Edit this firend", match: :first

    fill_in "Email", with: @firend.email
    fill_in "First name", with: @firend.first_name
    fill_in "Last name", with: @firend.last_name
    fill_in "Phone", with: @firend.phone
    fill_in "Twitter", with: @firend.twitter
    click_on "Update Firend"

    assert_text "Firend was successfully updated"
    click_on "Back"
  end

  test "should destroy Firend" do
    visit firend_url(@firend)
    click_on "Destroy this firend", match: :first

    assert_text "Firend was successfully destroyed"
  end
end
