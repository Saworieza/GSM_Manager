require 'test_helper'

class CustomerquotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customerquote = customerquotes(:one)
  end

  test "should get index" do
    get customerquotes_url
    assert_response :success
  end

  test "should get new" do
    get new_customerquote_url
    assert_response :success
  end

  test "should create customerquote" do
    assert_difference('Customerquote.count') do
      post customerquotes_url, params: { customerquote: { amount: @customerquote.amount, cost_center_id: @customerquote.cost_center_id, date: @customerquote.date, name: @customerquote.name } }
    end

    assert_redirected_to customerquote_url(Customerquote.last)
  end

  test "should show customerquote" do
    get customerquote_url(@customerquote)
    assert_response :success
  end

  test "should get edit" do
    get edit_customerquote_url(@customerquote)
    assert_response :success
  end

  test "should update customerquote" do
    patch customerquote_url(@customerquote), params: { customerquote: { amount: @customerquote.amount, cost_center_id: @customerquote.cost_center_id, date: @customerquote.date, name: @customerquote.name } }
    assert_redirected_to customerquote_url(@customerquote)
  end

  test "should destroy customerquote" do
    assert_difference('Customerquote.count', -1) do
      delete customerquote_url(@customerquote)
    end

    assert_redirected_to customerquotes_url
  end
end
