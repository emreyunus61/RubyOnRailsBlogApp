require "application_system_test_case"

class SozlersTest < ApplicationSystemTestCase
  setup do
    @sozler = sozlers(:one)
  end

  test "visiting the index" do
    visit sozlers_url
    assert_selector "h1", text: "Sozlers"
  end

  test "creating a Sozler" do
    visit sozlers_url
    click_on "New Sozler"

    fill_in "Soz", with: @sozler.soz
    fill_in "Yazar", with: @sozler.yazar
    click_on "Create Sozler"

    assert_text "Sozler was successfully created"
    click_on "Back"
  end

  test "updating a Sozler" do
    visit sozlers_url
    click_on "Edit", match: :first

    fill_in "Soz", with: @sozler.soz
    fill_in "Yazar", with: @sozler.yazar
    click_on "Update Sozler"

    assert_text "Sozler was successfully updated"
    click_on "Back"
  end

  test "destroying a Sozler" do
    visit sozlers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sozler was successfully destroyed"
  end
end
