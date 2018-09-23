require "application_system_test_case"

class ReptilesTest < ApplicationSystemTestCase
  setup do
    @reptile = reptiles(:one)
  end

  test "visiting the index" do
    visit reptiles_url
    assert_selector "h1", text: "Reptiles"
  end

  test "creating a Reptile" do
    visit reptiles_url
    click_on "New Reptile"

    fill_in "Birthday", with: @reptile.birthday
    fill_in "Comeday", with: @reptile.comeday
    fill_in "Image", with: @reptile.image
    fill_in "Name", with: @reptile.name
    click_on "Create Reptile"

    assert_text "Reptile was successfully created"
    click_on "Back"
  end

  test "updating a Reptile" do
    visit reptiles_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @reptile.birthday
    fill_in "Comeday", with: @reptile.comeday
    fill_in "Image", with: @reptile.image
    fill_in "Name", with: @reptile.name
    click_on "Update Reptile"

    assert_text "Reptile was successfully updated"
    click_on "Back"
  end

  test "destroying a Reptile" do
    visit reptiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reptile was successfully destroyed"
  end
end
