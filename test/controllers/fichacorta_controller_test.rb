require 'test_helper'

class FichacortaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fichacortum = fichacorta(:one)
  end

  test "should get index" do
    get fichacorta_url
    assert_response :success
  end

  test "should get new" do
    get new_fichacortum_url
    assert_response :success
  end

  test "should create fichacortum" do
    assert_difference('Fichacortum.count') do
      post fichacorta_url, params: { fichacortum: { ferid: @fichacortum.ferid, fob: @fichacortum.fob, preciosug: @fichacortum.preciosug, productomatnr: @fichacortum.productomatnr, productominmb: @fichacortum.productominmb, prvregcod: @fichacortum.prvregcod } }
    end

    assert_redirected_to fichacortum_url(Fichacortum.last)
  end

  test "should show fichacortum" do
    get fichacortum_url(@fichacortum)
    assert_response :success
  end

  test "should get edit" do
    get edit_fichacortum_url(@fichacortum)
    assert_response :success
  end

  test "should update fichacortum" do
    patch fichacortum_url(@fichacortum), params: { fichacortum: { ferid: @fichacortum.ferid, fob: @fichacortum.fob, preciosug: @fichacortum.preciosug, productomatnr: @fichacortum.productomatnr, productominmb: @fichacortum.productominmb, prvregcod: @fichacortum.prvregcod } }
    assert_redirected_to fichacortum_url(@fichacortum)
  end

  test "should destroy fichacortum" do
    assert_difference('Fichacortum.count', -1) do
      delete fichacortum_url(@fichacortum)
    end

    assert_redirected_to fichacorta_url
  end
end
