require 'test_helper'

class SitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site = sites(:one)
  end

  test "should get index" do
    get sites_url
    assert_response :success
  end

  test "should get new" do
    get new_site_url
    assert_response :success
  end

  test "should create site" do
    assert_difference('Site.count') do
      post sites_url, params: { site: { customerpo_id: @site.customerpo_id, name: @site.name, number: @site.number, scope_id: @site.scope_id, status_id: @site.status_id, tower_height: @site.tower_height, town_id: @site.town_id } }
    end

    assert_redirected_to site_url(Site.last)
  end

  test "should show site" do
    get site_url(@site)
    assert_response :success
  end

  test "should get edit" do
    get edit_site_url(@site)
    assert_response :success
  end

  test "should update site" do
    patch site_url(@site), params: { site: { customerpo_id: @site.customerpo_id, name: @site.name, number: @site.number, scope_id: @site.scope_id, status_id: @site.status_id, tower_height: @site.tower_height, town_id: @site.town_id } }
    assert_redirected_to site_url(@site)
  end

  test "should destroy site" do
    assert_difference('Site.count', -1) do
      delete site_url(@site)
    end

    assert_redirected_to sites_url
  end
end
