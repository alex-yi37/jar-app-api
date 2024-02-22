require "test_helper"

class JarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jar = jars(:one)
  end

  test "should get index" do
    get jars_url, as: :json
    assert_response :success
  end

  test "should create jar" do
    assert_difference("Jar.count") do
      post jars_url, params: { jar: { description: @jar.description, design_type: @jar.design_type, display_name: @jar.display_name, submission_time: @jar.submission_time } }, as: :json
    end

    assert_response :created
  end

  test "should show jar" do
    get jar_url(@jar), as: :json
    assert_response :success
  end

  test "should update jar" do
    patch jar_url(@jar), params: { jar: { description: @jar.description, design_type: @jar.design_type, display_name: @jar.display_name, submission_time: @jar.submission_time } }, as: :json
    assert_response :success
  end

  test "should destroy jar" do
    assert_difference("Jar.count", -1) do
      delete jar_url(@jar), as: :json
    end

    assert_response :no_content
  end
end
