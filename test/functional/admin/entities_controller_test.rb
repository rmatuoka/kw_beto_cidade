require 'test_helper'

class Admin::EntitiesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Entity.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Entity.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Entity.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_entity_url(assigns(:entity))
  end

  def test_edit
    get :edit, :id => Entity.first
    assert_template 'edit'
  end

  def test_update_invalid
    Entity.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Entity.first
    assert_template 'edit'
  end

  def test_update_valid
    Entity.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Entity.first
    assert_redirected_to admin_entity_url(assigns(:entity))
  end

  def test_destroy
    entity = Entity.first
    delete :destroy, :id => entity
    assert_redirected_to admin_entities_url
    assert !Entity.exists?(entity.id)
  end
end
