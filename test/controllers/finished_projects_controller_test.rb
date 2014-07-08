require 'test_helper'

class FinishedProjectsControllerTest < ActionController::TestCase
  setup do
    @finished_project = finished_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finished_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finished_project" do
    assert_difference('FinishedProject.count') do
      post :create, finished_project: { project_id: @finished_project.project_id, repo: @finished_project.repo, student_id: @finished_project.student_id, submitted: @finished_project.submitted }
    end

    assert_redirected_to finished_project_path(assigns(:finished_project))
  end

  test "should show finished_project" do
    get :show, id: @finished_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finished_project
    assert_response :success
  end

  test "should update finished_project" do
    patch :update, id: @finished_project, finished_project: { project_id: @finished_project.project_id, repo: @finished_project.repo, student_id: @finished_project.student_id, submitted: @finished_project.submitted }
    assert_redirected_to finished_project_path(assigns(:finished_project))
  end

  test "should destroy finished_project" do
    assert_difference('FinishedProject.count', -1) do
      delete :destroy, id: @finished_project
    end

    assert_redirected_to finished_projects_path
  end
end
