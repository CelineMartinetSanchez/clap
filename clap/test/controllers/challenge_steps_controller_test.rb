require 'test_helper'

class ChallengeStepsControllerTest < ActionController::TestCase
  setup do
    @challenge_step = challenge_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:challenge_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create challenge_step" do
    assert_difference('ChallengeStep.count') do
      post :create, challenge_step: { answerer_id: @challenge_step.answerer_id, challenge_id: @challenge_step.challenge_id, chosen_answer: @challenge_step.chosen_answer, question_id: @challenge_step.question_id }
    end

    assert_redirected_to challenge_step_path(assigns(:challenge_step))
  end

  test "should show challenge_step" do
    get :show, id: @challenge_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @challenge_step
    assert_response :success
  end

  test "should update challenge_step" do
    patch :update, id: @challenge_step, challenge_step: { answerer_id: @challenge_step.answerer_id, challenge_id: @challenge_step.challenge_id, chosen_answer: @challenge_step.chosen_answer, question_id: @challenge_step.question_id }
    assert_redirected_to challenge_step_path(assigns(:challenge_step))
  end

  test "should destroy challenge_step" do
    assert_difference('ChallengeStep.count', -1) do
      delete :destroy, id: @challenge_step
    end

    assert_redirected_to challenge_steps_path
  end
end
