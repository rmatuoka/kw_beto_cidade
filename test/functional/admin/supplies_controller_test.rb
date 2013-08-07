require 'test_helper'

class Admin::SuppliesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Supply.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Supply.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Supply.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_supply_url(assigns(:supply))
  end

  def test_edit
    get :edit, :id => Supply.first
    assert_template 'edit'
  end

  def test_update_invalid
    Supply.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Supply.first
    assert_template 'edit'
  end

  def test_update_valid
    Supply.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Supply.first
    assert_redirected_to admin_supply_url(assigns(:supply))
  end

  def test_destroy
    supply = Supply.first
    delete :destroy, :id => supply
    assert_redirected_to admin_supplies_url
    assert !Supply.exists?(supply.id)
  end
end
