require "application_system_test_case"

class RecordsTest < ApplicationSystemTestCase
  setup do
    @record = records(:one)
  end

  test "visiting the index" do
    visit records_url
    assert_selector "h1", text: "Records"
  end

  test "creating a Record" do
    visit records_url
    click_on "New Record"

    fill_in "Bath", with: @record.bath
    fill_in "Clean", with: @record.clean
    fill_in "Fece", with: @record.fece
    fill_in "Handling", with: @record.handling
    fill_in "Memo", with: @record.memo
    fill_in "Reptile", with: @record.reptile_id
    fill_in "Shed", with: @record.shed
    fill_in "Tall", with: @record.tall
    fill_in "Weight", with: @record.weight
    fill_in "Day", with: @record.day
    click_on "Create Record"

    assert_text "Record was successfully created"
    click_on "Back"
  end

  test "updating a Record" do
    visit records_url
    click_on "Edit", match: :first

    fill_in "Bath", with: @record.bath
    fill_in "Clean", with: @record.clean
    fill_in "Fece", with: @record.fece
    fill_in "Handling", with: @record.handling
    fill_in "Memo", with: @record.memo
    fill_in "Reptile", with: @record.reptile_id
    fill_in "Shed", with: @record.shed
    fill_in "Tall", with: @record.tall
    fill_in "Weight", with: @record.weight
    fill_in "Day", with: @record.day
    click_on "Update Record"

    assert_text "Record was successfully updated"
    click_on "Back"
  end

  test "destroying a Record" do
    visit records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Record was successfully destroyed"
  end
end
