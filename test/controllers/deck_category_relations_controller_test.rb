require 'test_helper'

class DeckCategoryRelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deck_category_relation = deck_category_relations(:one)
  end

  test "should get index" do
    get deck_category_relations_url, as: :json
    assert_response :success
  end

  test "should create deck_category_relation" do
    assert_difference('DeckCategoryRelation.count') do
      post deck_category_relations_url, params: { deck_category_relation: { category_id: @deck_category_relation.category_id, deck_id: @deck_category_relation.deck_id } }, as: :json
    end

    assert_response 201
  end

  test "should show deck_category_relation" do
    get deck_category_relation_url(@deck_category_relation), as: :json
    assert_response :success
  end

  test "should update deck_category_relation" do
    patch deck_category_relation_url(@deck_category_relation), params: { deck_category_relation: { category_id: @deck_category_relation.category_id, deck_id: @deck_category_relation.deck_id } }, as: :json
    assert_response 200
  end

  test "should destroy deck_category_relation" do
    assert_difference('DeckCategoryRelation.count', -1) do
      delete deck_category_relation_url(@deck_category_relation), as: :json
    end

    assert_response 204
  end
end
