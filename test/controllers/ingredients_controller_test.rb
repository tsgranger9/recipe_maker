require 'test_helper'

class IngredientsControllerTest < ActionController::TestCase
  setup do
    @ingredient = ingredients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredient" do
    assert_difference('Ingredient.count') do
      post :create, ingredient: { calories: @ingredient.calories, carbohydrate: @ingredient.carbohydrate, protein: @ingredient.protein, recipe_id: @ingredient.recipe_id, saturated_fat: @ingredient.saturated_fat, sugar: @ingredient.sugar, total_fat: @ingredient.total_fat }
    end

    assert_redirected_to ingredient_path(assigns(:ingredient))
  end

  test "should show ingredient" do
    get :show, id: @ingredient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredient
    assert_response :success
  end

  test "should update ingredient" do
    patch :update, id: @ingredient, ingredient: { calories: @ingredient.calories, carbohydrate: @ingredient.carbohydrate, protein: @ingredient.protein, recipe_id: @ingredient.recipe_id, saturated_fat: @ingredient.saturated_fat, sugar: @ingredient.sugar, total_fat: @ingredient.total_fat }
    assert_redirected_to ingredient_path(assigns(:ingredient))
  end

  test "should destroy ingredient" do
    assert_difference('Ingredient.count', -1) do
      delete :destroy, id: @ingredient
    end

    assert_redirected_to ingredients_path
  end
end
