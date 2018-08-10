require 'test_helper'

class CustomerQuotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_quote = customer_quotes(:one)
  end

  test "should get index" do
    get customer_quotes_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_quote_url
    assert_response :success
  end

  test "should create customer_quote" do
    assert_difference('CustomerQuote.count') do
      post customer_quotes_url, params: { customer_quote: { amount: @customer_quote.amount, customer_po_id: @customer_quote.customer_po_id, date: @customer_quote.date, name: @customer_quote.name } }
    end

    assert_redirected_to customer_quote_url(CustomerQuote.last)
  end

  test "should show customer_quote" do
    get customer_quote_url(@customer_quote)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_quote_url(@customer_quote)
    assert_response :success
  end

  test "should update customer_quote" do
    patch customer_quote_url(@customer_quote), params: { customer_quote: { amount: @customer_quote.amount, customer_po_id: @customer_quote.customer_po_id, date: @customer_quote.date, name: @customer_quote.name } }
    assert_redirected_to customer_quote_url(@customer_quote)
  end

  test "should destroy customer_quote" do
    assert_difference('CustomerQuote.count', -1) do
      delete customer_quote_url(@customer_quote)
    end

    assert_redirected_to customer_quotes_url
  end
end
