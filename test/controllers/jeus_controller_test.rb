require 'test_helper'

class JeusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jeu = jeus(:one)
  end

  test "should get index" do
    get jeus_url
    assert_response :success
  end

  test "should get new" do
    get new_jeu_url
    assert_response :success
  end

  test "should create jeu" do
    assert_difference('Jeu.count') do
      post jeus_url, params: { jeu: { description: @jeu.description, rank: @jeu.rank, title: @jeu.title } }
    end

    assert_redirected_to jeu_url(Jeu.last)
  end

  test "should show jeu" do
    get jeu_url(@jeu)
    assert_response :success
  end

  test "should get edit" do
    get edit_jeu_url(@jeu)
    assert_response :success
  end

  test "should update jeu" do
    patch jeu_url(@jeu), params: { jeu: { description: @jeu.description, rank: @jeu.rank, title: @jeu.title } }
    assert_redirected_to jeu_url(@jeu)
  end

  test "should destroy jeu" do
    assert_difference('Jeu.count', -1) do
      delete jeu_url(@jeu)
    end

    assert_redirected_to jeus_url
  end
end
