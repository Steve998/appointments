require 'test_helper'

class AppointmentControllerTest < ActionController::TestCase
  test "should get physician_id" do
    get :physician_id
    assert_response :success
  end

  test "should get patient_id" do
    get :patient_id
    assert_response :success
  end

  test "should get appointmentdate" do
    get :appointmentdate
    assert_response :success
  end

end
