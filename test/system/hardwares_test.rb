require "application_system_test_case"

class HardwaresTest < ApplicationSystemTestCase
  setup do
    @hardware = hardwares(:one)
  end

  test "visiting the index" do
    visit hardwares_url
    assert_selector "h1", text: "Hardwares"
  end

  test "should create hardware" do
    visit hardwares_url
    click_on "New hardware"

    fill_in "Description", with: @hardware.description
    fill_in "Model", with: @hardware.model
    fill_in "Type", with: @hardware.type
    click_on "Create Hardware"

    assert_text "Hardware was successfully created"
    click_on "Back"
  end

  test "should update Hardware" do
    visit hardware_url(@hardware)
    click_on "Edit this hardware", match: :first

    fill_in "Description", with: @hardware.description
    fill_in "Model", with: @hardware.model
    fill_in "Type", with: @hardware.type
    click_on "Update Hardware"

    assert_text "Hardware was successfully updated"
    click_on "Back"
  end

  test "should destroy Hardware" do
    visit hardware_url(@hardware)
    click_on "Destroy this hardware", match: :first

    assert_text "Hardware was successfully destroyed"
  end
end
