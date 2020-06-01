require 'test_helper'

class PickuplistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pickuplist = pickuplists(:one)
  end

  test "should get index" do
    get pickuplists_url
    assert_response :success
  end

  test "should get new" do
    get new_pickuplist_url
    assert_response :success
  end

  test "should create pickuplist" do
    assert_difference('Pickuplist.count') do
      post pickuplists_url, params: { pickuplist: { c_and_f: @pickuplist.c_and_f, cc: @pickuplist.cc, color: @pickuplist.color, country: @pickuplist.country, date: @pickuplist.date, grade: @pickuplist.grade, list_number: @pickuplist.list_number, maker: @pickuplist.maker, mileage: @pickuplist.mileage, model: @pickuplist.model, place: @pickuplist.place, purchase: @pickuplist.purchase, result: @pickuplist.result, score: @pickuplist.score, status: @pickuplist.status, vin: @pickuplist.vin, year: @pickuplist.year } }
    end

    assert_redirected_to pickuplist_url(Pickuplist.last)
  end

  test "should show pickuplist" do
    get pickuplist_url(@pickuplist)
    assert_response :success
  end

  test "should get edit" do
    get edit_pickuplist_url(@pickuplist)
    assert_response :success
  end

  test "should update pickuplist" do
    patch pickuplist_url(@pickuplist), params: { pickuplist: { c_and_f: @pickuplist.c_and_f, cc: @pickuplist.cc, color: @pickuplist.color, country: @pickuplist.country, date: @pickuplist.date, grade: @pickuplist.grade, list_number: @pickuplist.list_number, maker: @pickuplist.maker, mileage: @pickuplist.mileage, model: @pickuplist.model, place: @pickuplist.place, purchase: @pickuplist.purchase, result: @pickuplist.result, score: @pickuplist.score, status: @pickuplist.status, vin: @pickuplist.vin, year: @pickuplist.year } }
    assert_redirected_to pickuplist_url(@pickuplist)
  end

  test "should destroy pickuplist" do
    assert_difference('Pickuplist.count', -1) do
      delete pickuplist_url(@pickuplist)
    end

    assert_redirected_to pickuplists_url
  end
end
