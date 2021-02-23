require "test_helper"

class CadastroControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cadastro_index_url
    assert_response :success
  end
end
