require 'test_helper'

class CasesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index (cases#index)' do
    get '/'
    assert_response :success
  end

  test 'should get grafik (cases#chart)' do
    get '/grafik'
    assert_response :success
  end

  test 'should get zona-risiko (scores#index)' do
    get '/zona-resiko'
    assert_response :success
  end
end
