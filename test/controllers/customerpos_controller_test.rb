require 'test_helper'

class CustomerposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customerpo = customerpos(:one)
  end

  test "should get index" do
    get customerpos_url
    assert_response :success
  end

  test "should get new" do
    get new_customerpo_url
    assert_response :success
  end

  test "should create customerpo" do
    assert_difference('Customerpo.count') do
      post customerpos_url, params: { customerpo: { amount: @customerpo.amount, customerquote_id: @customerpo.customerquote_id, date: @customerpo.date, number: @customerpo.number } }
    end

    assert_redirected_to customerpo_url(Customerpo.last)
  end

  test "should show customerpo" do
    get customerpo_url(@customerpo)
    assert_response :success
  end

  test "should get edit" do
    get edit_customerpo_url(@customerpo)
    assert_response :success
  end

  test "should update customerpo" do
    patch customerpo_url(@customerpo), params: { customerpo: { amount: @customerpo.amount, customerquote_id: @customerpo.customerquote_id, date: @customerpo.date, number: @customerpo.number } }
    assert_redirected_to customerpo_url(@customerpo)
  end

  test "should destroy customerpo" do
    assert_difference('Customerpo.count', -1) do
      delete customerpo_url(@customerpo)
    end

    assert_redirected_to customerpos_url
  end
end
