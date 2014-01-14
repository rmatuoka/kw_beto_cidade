require 'test_helper'

class Admin::BeingsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Being.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Being.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Being.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_being_url(assigns(:being))
  end

  def test_edit
    get :edit, :id => Being.first
    assert_template 'edit'
  end

  def test_update_invalid
    Being.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Being.first
    assert_template 'edit'
  end

  def test_update_valid
    Being.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Being.first
    assert_redirected_to admin_being_url(assigns(:being))
  end

  def test_destroy
    being = Being.first
    delete :destroy, :id => being
    assert_redirected_to admin_beings_url
    assert !Being.exists?(being.id)
  end
end
