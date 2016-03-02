require 'test_helper'

class TagDefinitionsControllerTest < ActionController::TestCase
  setup do
    @tag_definition = tag_definitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tag_definitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag_definition" do
    assert_difference('TagDefinition.count') do
      post :create, tag_definition: { description: @tag_definition.description, dev_pertinence: @tag_definition.dev_pertinence, dev_status: @tag_definition.dev_status, entity_type: @tag_definition.entity_type, name: @tag_definition.name, structure: @tag_definition.structure, subjective: @tag_definition.subjective, tag_target: @tag_definition.tag_target, tag_type: @tag_definition.tag_type, tag_type_range_id: @tag_definition.tag_type_range_id, td_version_id: @tag_definition.td_version_id, unique: @tag_definition.unique, virtual: @tag_definition.virtual, virtual_target: @tag_definition.virtual_target }
    end

    assert_redirected_to tag_definition_path(assigns(:tag_definition))
  end

  test "should show tag_definition" do
    get :show, id: @tag_definition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag_definition
    assert_response :success
  end

  test "should update tag_definition" do
    patch :update, id: @tag_definition, tag_definition: { description: @tag_definition.description, dev_pertinence: @tag_definition.dev_pertinence, dev_status: @tag_definition.dev_status, entity_type: @tag_definition.entity_type, name: @tag_definition.name, structure: @tag_definition.structure, subjective: @tag_definition.subjective, tag_target: @tag_definition.tag_target, tag_type: @tag_definition.tag_type, tag_type_range_id: @tag_definition.tag_type_range_id, td_version_id: @tag_definition.td_version_id, unique: @tag_definition.unique, virtual: @tag_definition.virtual, virtual_target: @tag_definition.virtual_target }
    assert_redirected_to tag_definition_path(assigns(:tag_definition))
  end

  test "should destroy tag_definition" do
    assert_difference('TagDefinition.count', -1) do
      delete :destroy, id: @tag_definition
    end

    assert_redirected_to tag_definitions_path
  end
end
