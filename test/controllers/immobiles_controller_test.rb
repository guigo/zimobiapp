require 'test_helper'

class ImmobilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @immobile = immobiles(:one)
  end

  test "should get index" do
    get immobiles_url
    assert_response :success
  end

  test "should get new" do
    get new_immobile_url
    assert_response :success
  end

  test "should create immobile" do
    assert_difference('Immobile.count') do
      post immobiles_url, params: { immobile: { description: @immobile.description, history: @immobile.history, title: @immobile.title, value: @immobile.value } }
    end

    assert_redirected_to immobile_url(Immobile.last)
  end

  test "should show immobile" do
    get immobile_url(@immobile)
    assert_response :success
  end

  test "should get edit" do
    get edit_immobile_url(@immobile)
    assert_response :success
  end

  test "should update immobile" do
    patch immobile_url(@immobile), params: { immobile: { description: @immobile.description, history: @immobile.history, title: @immobile.title, value: @immobile.value } }
    assert_redirected_to immobile_url(@immobile)
  end

  test "should destroy immobile" do
    assert_difference('Immobile.count', -1) do
      delete immobile_url(@immobile)
    end

    assert_redirected_to immobiles_url
  end
end
