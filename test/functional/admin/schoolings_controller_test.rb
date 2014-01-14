require 'test_helper'

class Admin::SchoolingsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Schooling.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Schooling.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Schooling.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_schooling_url(assigns(:schooling))
  end

  def test_edit
    get :edit, :id => Schooling.first
    assert_template 'edit'
  end

  def test_update_invalid
    Schooling.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Schooling.first
    assert_template 'edit'
  end

  def test_update_valid
    Schooling.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Schooling.first
    assert_redirected_to admin_schooling_url(assigns(:schooling))
  end

  def test_destroy
    schooling = Schooling.first
    delete :destroy, :id => schooling
    assert_redirected_to admin_schoolings_url
    assert !Schooling.exists?(schooling.id)
  end
end
