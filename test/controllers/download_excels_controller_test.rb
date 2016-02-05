require 'test_helper'

class DownloadExcelsControllerTest < ActionController::TestCase
  setup do
    @download_excel = download_excels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:download_excels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create download_excel" do
    assert_difference('DownloadExcel.count') do
      post :create, download_excel: { age: @download_excel.age, fristname: @download_excel.fristname, lastname: @download_excel.lastname, name: @download_excel.name }
    end

    assert_redirected_to download_excel_path(assigns(:download_excel))
  end

  test "should show download_excel" do
    get :show, id: @download_excel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @download_excel
    assert_response :success
  end

  test "should update download_excel" do
    patch :update, id: @download_excel, download_excel: { age: @download_excel.age, fristname: @download_excel.fristname, lastname: @download_excel.lastname, name: @download_excel.name }
    assert_redirected_to download_excel_path(assigns(:download_excel))
  end

  test "should destroy download_excel" do
    assert_difference('DownloadExcel.count', -1) do
      delete :destroy, id: @download_excel
    end

    assert_redirected_to download_excels_path
  end
end
