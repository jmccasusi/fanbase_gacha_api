require 'test_helper'

class GroupCategoryRelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_category_relation = group_category_relations(:one)
  end

  test "should get index" do
    get group_category_relations_url, as: :json
    assert_response :success
  end

  test "should create group_category_relation" do
    assert_difference('GroupCategoryRelation.count') do
      post group_category_relations_url, params: { group_category_relation: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show group_category_relation" do
    get group_category_relation_url(@group_category_relation), as: :json
    assert_response :success
  end

  test "should update group_category_relation" do
    patch group_category_relation_url(@group_category_relation), params: { group_category_relation: {  } }, as: :json
    assert_response 200
  end

  test "should destroy group_category_relation" do
    assert_difference('GroupCategoryRelation.count', -1) do
      delete group_category_relation_url(@group_category_relation), as: :json
    end

    assert_response 204
  end
end
