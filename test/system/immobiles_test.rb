require "application_system_test_case"

class ImmobilesTest < ApplicationSystemTestCase
  setup do
    @immobile = immobiles(:one)
  end

  test "visiting the index" do
    visit immobiles_url
    assert_selector "h1", text: "Immobiles"
  end

  test "creating a Immobile" do
    visit immobiles_url
    click_on "New Immobile"

    fill_in "Description", with: @immobile.description
    fill_in "History", with: @immobile.history
    fill_in "Title", with: @immobile.title
    fill_in "Value", with: @immobile.value
    click_on "Create Immobile"

    assert_text "Immobile was successfully created"
    click_on "Back"
  end

  test "updating a Immobile" do
    visit immobiles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @immobile.description
    fill_in "History", with: @immobile.history
    fill_in "Title", with: @immobile.title
    fill_in "Value", with: @immobile.value
    click_on "Update Immobile"

    assert_text "Immobile was successfully updated"
    click_on "Back"
  end

  test "destroying a Immobile" do
    visit immobiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Immobile was successfully destroyed"
  end
end
