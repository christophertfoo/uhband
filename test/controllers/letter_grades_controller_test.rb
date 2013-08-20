require 'test_helper'

class LetterGradesControllerTest < ActionController::TestCase
  setup do
    @letter_grade = letter_grades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:letter_grades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create letter_grade" do
    assert_difference('LetterGrade.count') do
      post :create, letter_grade: { grade: @letter_grade.grade, max_points: @letter_grade.max_points, min_points: @letter_grade.min_points }
    end

    assert_redirected_to letter_grade_path(assigns(:letter_grade))
  end

  test "should show letter_grade" do
    get :show, id: @letter_grade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @letter_grade
    assert_response :success
  end

  test "should update letter_grade" do
    patch :update, id: @letter_grade, letter_grade: { grade: @letter_grade.grade, max_points: @letter_grade.max_points, min_points: @letter_grade.min_points }
    assert_redirected_to letter_grade_path(assigns(:letter_grade))
  end

  test "should destroy letter_grade" do
    assert_difference('LetterGrade.count', -1) do
      delete :destroy, id: @letter_grade
    end

    assert_redirected_to letter_grades_path
  end
end
