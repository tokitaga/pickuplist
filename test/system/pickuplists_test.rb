require "application_system_test_case"

class PickuplistsTest < ApplicationSystemTestCase
  setup do
    @pickuplist = pickuplists(:one)
  end

  test "visiting the index" do
    visit pickuplists_url
    assert_selector "h1", text: "Pickuplists"
  end

  test "creating a Pickuplist" do
    visit pickuplists_url
    click_on "New Pickuplist"

    fill_in "C and f", with: @pickuplist.c_and_f
    fill_in "Cc", with: @pickuplist.cc
    fill_in "Color", with: @pickuplist.color
    fill_in "Country", with: @pickuplist.country
    fill_in "Date", with: @pickuplist.date
    fill_in "Grade", with: @pickuplist.grade
    fill_in "List number", with: @pickuplist.list_number
    fill_in "Maker", with: @pickuplist.maker
    fill_in "Mileage", with: @pickuplist.mileage
    fill_in "Model", with: @pickuplist.model
    fill_in "Place", with: @pickuplist.place
    fill_in "Purchase", with: @pickuplist.purchase
    fill_in "Result", with: @pickuplist.result
    fill_in "Score", with: @pickuplist.score
    fill_in "Status", with: @pickuplist.status
    fill_in "Vin", with: @pickuplist.vin
    fill_in "Year", with: @pickuplist.year
    click_on "Create Pickuplist"

    assert_text "Pickuplist was successfully created"
    click_on "Back"
  end

  test "updating a Pickuplist" do
    visit pickuplists_url
    click_on "Edit", match: :first

    fill_in "C and f", with: @pickuplist.c_and_f
    fill_in "Cc", with: @pickuplist.cc
    fill_in "Color", with: @pickuplist.color
    fill_in "Country", with: @pickuplist.country
    fill_in "Date", with: @pickuplist.date
    fill_in "Grade", with: @pickuplist.grade
    fill_in "List number", with: @pickuplist.list_number
    fill_in "Maker", with: @pickuplist.maker
    fill_in "Mileage", with: @pickuplist.mileage
    fill_in "Model", with: @pickuplist.model
    fill_in "Place", with: @pickuplist.place
    fill_in "Purchase", with: @pickuplist.purchase
    fill_in "Result", with: @pickuplist.result
    fill_in "Score", with: @pickuplist.score
    fill_in "Status", with: @pickuplist.status
    fill_in "Vin", with: @pickuplist.vin
    fill_in "Year", with: @pickuplist.year
    click_on "Update Pickuplist"

    assert_text "Pickuplist was successfully updated"
    click_on "Back"
  end

  test "destroying a Pickuplist" do
    visit pickuplists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pickuplist was successfully destroyed"
  end
end
