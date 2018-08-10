require 'test_helper'

class CustomerPOsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_po = customer_pos(:one)
  end

  test "should get index" do
    get customer_pos_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_po_url
    assert_response :success
  end

  test "should create customer_po" do
    assert_difference('CustomerPo.count') do
      post customer_pos_url, params: { customer_po: { Date: @customer_po.Date, cost_center_id: @customer_po.cost_center_id, number: @customer_po.number } }
    end

    assert_redirected_to customer_po_url(CustomerPo.last)
  end

  test "should show customer_po" do
    get customer_po_url(@customer_po)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_po_url(@customer_po)
    assert_response :success
  end

  test "should update customer_po" do
    patch customer_po_url(@customer_po), params: { customer_po: { Date: @customer_po.Date, cost_center_id: @customer_po.cost_center_id, number: @customer_po.number } }
    assert_redirected_to customer_po_url(@customer_po)
  end

  test "should destroy customer_po" do
    assert_difference('CustomerPo.count', -1) do
      delete customer_po_url(@customer_po)
    end

    assert_redirected_to customer_pos_url
  end
end
