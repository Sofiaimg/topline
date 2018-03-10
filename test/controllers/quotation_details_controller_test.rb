require 'test_helper'

class QuotationDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quotation_detail = quotation_details(:one)
  end

  test "should get index" do
    get quotation_details_url
    assert_response :success
  end

  test "should get new" do
    get new_quotation_detail_url
    assert_response :success
  end

  test "should create quotation_detail" do
    assert_difference('QuotationDetail.count') do
      post quotation_details_url, params: { quotation_detail: { color: @quotation_detail.color, delivery_date: @quotation_detail.delivery_date, final_price: @quotation_detail.final_price, incoterm: @quotation_detail.incoterm, product: @quotation_detail.product, quantity: @quotation_detail.quantity, quotation_id: @quotation_detail.quotation_id, ratio: @quotation_detail.ratio, size: @quotation_detail.size, status: @quotation_detail.status, target_price: @quotation_detail.target_price } }
    end

    assert_redirected_to quotation_detail_url(QuotationDetail.last)
  end

  test "should show quotation_detail" do
    get quotation_detail_url(@quotation_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_quotation_detail_url(@quotation_detail)
    assert_response :success
  end

  test "should update quotation_detail" do
    patch quotation_detail_url(@quotation_detail), params: { quotation_detail: { color: @quotation_detail.color, delivery_date: @quotation_detail.delivery_date, final_price: @quotation_detail.final_price, incoterm: @quotation_detail.incoterm, product: @quotation_detail.product, quantity: @quotation_detail.quantity, quotation_id: @quotation_detail.quotation_id, ratio: @quotation_detail.ratio, size: @quotation_detail.size, status: @quotation_detail.status, target_price: @quotation_detail.target_price } }
    assert_redirected_to quotation_detail_url(@quotation_detail)
  end

  test "should destroy quotation_detail" do
    assert_difference('QuotationDetail.count', -1) do
      delete quotation_detail_url(@quotation_detail)
    end

    assert_redirected_to quotation_details_url
  end
end
