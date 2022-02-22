require "test_helper"

class FirendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firend = firends(:one)
  end

  test "should get index" do
    get firends_url
    assert_response :success
  end

  test "should get new" do
    get new_firend_url
    assert_response :success
  end

  test "should create firend" do
    assert_difference("Firend.count") do
      post firends_url, params: { firend: { email: @firend.email, first_name: @firend.first_name, last_name: @firend.last_name, phone: @firend.phone, twitter: @firend.twitter } }
    end

    assert_redirected_to firend_url(Firend.last)
  end

  test "should show firend" do
    get firend_url(@firend)
    assert_response :success
  end

  test "should get edit" do
    get edit_firend_url(@firend)
    assert_response :success
  end

  test "should update firend" do
    patch firend_url(@firend), params: { firend: { email: @firend.email, first_name: @firend.first_name, last_name: @firend.last_name, phone: @firend.phone, twitter: @firend.twitter } }
    assert_redirected_to firend_url(@firend)
  end

  test "should destroy firend" do
    assert_difference("Firend.count", -1) do
      delete firend_url(@firend)
    end

    assert_redirected_to firends_url
  end
end
