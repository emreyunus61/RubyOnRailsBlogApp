require "test_helper"

class SozlersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sozler = sozlers(:one)
  end

  test "should get index" do
    get sozlers_url
    assert_response :success
  end

  test "should get new" do
    get new_sozler_url
    assert_response :success
  end

  test "should create sozler" do
    assert_difference('Sozler.count') do
      post sozlers_url, params: { sozler: { soz: @sozler.soz, yazar: @sozler.yazar } }
    end

    assert_redirected_to sozler_url(Sozler.last)
  end

  test "should show sozler" do
    get sozler_url(@sozler)
    assert_response :success
  end

  test "should get edit" do
    get edit_sozler_url(@sozler)
    assert_response :success
  end

  test "should update sozler" do
    patch sozler_url(@sozler), params: { sozler: { soz: @sozler.soz, yazar: @sozler.yazar } }
    assert_redirected_to sozler_url(@sozler)
  end

  test "should destroy sozler" do
    assert_difference('Sozler.count', -1) do
      delete sozler_url(@sozler)
    end

    assert_redirected_to sozlers_url
  end
end
