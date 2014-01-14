require 'test_helper'

class Admin::BeingTypesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => BeingType.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    BeingType.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    BeingType.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_being_type_url(assigns(:being_type))
  end

  def test_edit
    get :edit, :id => BeingType.first
    assert_template 'edit'
  end

  def test_update_invalid
    BeingType.any_instance.stubs(:valid?).returns(false)
    put :update, :id => BeingType.first
    assert_template 'edit'
  end

  def test_update_valid
    BeingType.any_instance.stubs(:valid?).returns(true)
    put :update, :id => BeingType.first
    assert_redirected_to admin_being_type_url(assigns(:being_type))
  end

  def test_destroy
    being_type = BeingType.first
    delete :destroy, :id => being_type
    assert_redirected_to admin_being_types_url
    assert !BeingType.exists?(being_type.id)
  end
end
