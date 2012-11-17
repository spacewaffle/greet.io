require 'test_helper'

class UserAtEventsControllerTest < ActionController::TestCase
  setup do
    @user_at_event = user_at_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_at_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_at_event" do
    assert_difference('UserAtEvent.count') do
      post :create, user_at_event: { content: @user_at_event.content, name: @user_at_event.name }
    end

    assert_redirected_to user_at_event_path(assigns(:user_at_event))
  end

  test "should show user_at_event" do
    get :show, id: @user_at_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_at_event
    assert_response :success
  end

  test "should update user_at_event" do
    put :update, id: @user_at_event, user_at_event: { content: @user_at_event.content, name: @user_at_event.name }
    assert_redirected_to user_at_event_path(assigns(:user_at_event))
  end

  test "should destroy user_at_event" do
    assert_difference('UserAtEvent.count', -1) do
      delete :destroy, id: @user_at_event
    end

    assert_redirected_to user_at_events_path
  end
end
