require 'test_helper'

class PorductsControllerTest < ActionController::TestCase
  setup do
    @porduct = porducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:porducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create porduct" do
    assert_difference('Porduct.count') do
      post :create, porduct: { category: @porduct.category, description: @porduct.description, image: @porduct.image, price: @porduct.price, subcategory: @porduct.subcategory, title: @porduct.title }
    end

    assert_redirected_to porduct_path(assigns(:porduct))
  end

  test "should show porduct" do
    get :show, id: @porduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @porduct
    assert_response :success
  end

  test "should update porduct" do
    patch :update, id: @porduct, porduct: { category: @porduct.category, description: @porduct.description, image: @porduct.image, price: @porduct.price, subcategory: @porduct.subcategory, title: @porduct.title }
    assert_redirected_to porduct_path(assigns(:porduct))
  end

  test "should destroy porduct" do
    assert_difference('Porduct.count', -1) do
      delete :destroy, id: @porduct
    end

    assert_redirected_to porducts_path
  end
end
