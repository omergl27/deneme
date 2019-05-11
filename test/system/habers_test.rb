require "application_system_test_case"

class HabersTest < ApplicationSystemTestCase
  setup do
    @haber = habers(:one)
  end

  test "visiting the index" do
    visit habers_url
    assert_selector "h1", text: "Habers"
  end

  test "creating a Haber" do
    visit habers_url
    click_on "New Haber"

    fill_in "Baslik", with: @haber.baslik
    fill_in "Govde", with: @haber.govde
    fill_in "Resim", with: @haber.resim
    fill_in "Tiklanma", with: @haber.tiklanma
    click_on "Create Haber"

    assert_text "Haber was successfully created"
    click_on "Back"
  end

  test "updating a Haber" do
    visit habers_url
    click_on "Edit", match: :first

    fill_in "Baslik", with: @haber.baslik
    fill_in "Govde", with: @haber.govde
    fill_in "Resim", with: @haber.resim
    fill_in "Tiklanma", with: @haber.tiklanma
    click_on "Update Haber"

    assert_text "Haber was successfully updated"
    click_on "Back"
  end

  test "destroying a Haber" do
    visit habers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Haber was successfully destroyed"
  end
end
