require 'test_helper'

class HabersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @haber = habers(:one)
  end

  test "should get index" do
    get habers_url
    assert_response :success
  end

  test "should get new" do
    get new_haber_url
    assert_response :success
  end

  test "should create haber" do
    assert_difference('Haber.count') do
      post habers_url, params: { haber: { baslik: @haber.baslik, govde: @haber.govde, resim: @haber.resim, tiklanma: @haber.tiklanma } }
    end

    assert_redirected_to haber_url(Haber.last)
  end

  test "should show haber" do
    get haber_url(@haber)
    assert_response :success
  end

  test "should get edit" do
    get edit_haber_url(@haber)
    assert_response :success
  end

  test "should update haber" do
    patch haber_url(@haber), params: { haber: { baslik: @haber.baslik, govde: @haber.govde, resim: @haber.resim, tiklanma: @haber.tiklanma } }
    assert_redirected_to haber_url(@haber)
  end

  test "should destroy haber" do
    assert_difference('Haber.count', -1) do
      delete haber_url(@haber)
    end

    assert_redirected_to habers_url
  end
end
