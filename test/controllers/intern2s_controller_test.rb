require 'test_helper'

class Intern2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intern2 = intern2s(:one)
  end

  test "should get index" do
    get intern2s_url
    assert_response :success
  end

  test "should get new" do
    get new_intern2_url
    assert_response :success
  end

  test "should create intern2" do
    assert_difference('Intern2.count') do
      post intern2s_url, params: { intern2: { emailAdress: @intern2.emailAdress, fullName: @intern2.fullName, gender: @intern2.gender, institution: @intern2.institution, otherName: @intern2.otherName, profilePic: @intern2.profilePic, program: @intern2.program, registrationNumber: @intern2.registrationNumber, year: @intern2.year } }
    end

    assert_redirected_to intern2_url(Intern2.last)
  end

  test "should show intern2" do
    get intern2_url(@intern2)
    assert_response :success
  end

  test "should get edit" do
    get edit_intern2_url(@intern2)
    assert_response :success
  end

  test "should update intern2" do
    patch intern2_url(@intern2), params: { intern2: { emailAdress: @intern2.emailAdress, fullName: @intern2.fullName, gender: @intern2.gender, institution: @intern2.institution, otherName: @intern2.otherName, profilePic: @intern2.profilePic, program: @intern2.program, registrationNumber: @intern2.registrationNumber, year: @intern2.year } }
    assert_redirected_to intern2_url(@intern2)
  end

  test "should destroy intern2" do
    assert_difference('Intern2.count', -1) do
      delete intern2_url(@intern2)
    end

    assert_redirected_to intern2s_url
  end
end
