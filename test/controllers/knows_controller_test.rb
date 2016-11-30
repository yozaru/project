require 'test_helper'

class KnowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @know = knows(:one)
  end

  test "should get index" do
    get knows_url
    assert_response :success
  end

  test "should get new" do
    get new_know_url
    assert_response :success
  end

  test "should create know" do
    assert_difference('Know.count') do
      post knows_url, params: { know: { body: @know.body, company: @know.company, title: @know.title } }
    end

    assert_redirected_to know_url(Know.last)
  end

  test "should show know" do
    get know_url(@know)
    assert_response :success
  end

  test "should get edit" do
    get edit_know_url(@know)
    assert_response :success
  end

  test "should update know" do
    patch know_url(@know), params: { know: { body: @know.body, company: @know.company, title: @know.title } }
    assert_redirected_to know_url(@know)
  end

  test "should destroy know" do
    assert_difference('Know.count', -1) do
      delete know_url(@know)
    end

    assert_redirected_to knows_url
  end
end
