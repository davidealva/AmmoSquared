require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { brand: @product.brand, bullet_weight: @product.bullet_weight, caliber: @product.caliber, cost_per: @product.cost_per, description: @product.description, grade: @product.grade, price_per: @product.price_per, quantity_avail: @product.quantity_avail, rounds_box: @product.rounds_box, sku: @product.sku, weight_per: @product.weight_per } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { brand: @product.brand, bullet_weight: @product.bullet_weight, caliber: @product.caliber, cost_per: @product.cost_per, description: @product.description, grade: @product.grade, price_per: @product.price_per, quantity_avail: @product.quantity_avail, rounds_box: @product.rounds_box, sku: @product.sku, weight_per: @product.weight_per } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
