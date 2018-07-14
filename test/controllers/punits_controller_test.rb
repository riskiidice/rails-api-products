require 'test_helper'

class PunitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @punit = punits(:one)
  end

  test "should get index" do
    get punits_url, as: :json
    assert_response :success
  end

  test "should create punit" do
    assert_difference('Punit.count') do
      post punits_url, params: { punit: { amount: @punit.amount, price: @punit.price, product_id: @punit.product_id } }, as: :json
    end

    assert_response 201
  end

  test "should show punit" do
    get punit_url(@punit), as: :json
    assert_response :success
  end

  test "should update punit" do
    patch punit_url(@punit), params: { punit: { amount: @punit.amount, price: @punit.price, product_id: @punit.product_id } }, as: :json
    assert_response 200
  end

  test "should destroy punit" do
    assert_difference('Punit.count', -1) do
      delete punit_url(@punit), as: :json
    end

    assert_response 204
  end
end
