require 'test_helper'

class HeroPhrasesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @hero_phrase = hero_phrases(:one)
  end

  #test "should get index" do
  #  get :index
  #  assert_response :success
  #  assert_not_nil assigns(:hero_phrases)
  #end

  #test "should get new" do
  #  get :new
  #  assert_response :success
  #end

  #test "should create hero_phrase" do
  #  assert_difference('HeroPhrase.count') do
  #    post :create, hero_phrase: { text: @hero_phrase.text }
  #  end

  #  assert_redirected_to hero_phrase_path(assigns(:hero_phrase))
  #end

  #test "should show hero_phrase" do
  #  get :show, id: @hero_phrase
  #  assert_response :success
  #end

  #test "should get edit" do
  #  get :edit, id: @hero_phrase
  #  assert_response :success
  #end

  #test "should update hero_phrase" do
  #  patch :update, id: @hero_phrase, hero_phrase: { text: @hero_phrase.text }
  #  assert_redirected_to hero_phrase_path(assigns(:hero_phrase))
  #end

  #test "should destroy hero_phrase" do
  #  assert_difference('HeroPhrase.count', -1) do
  #    delete :destroy, id: @hero_phrase
  #  end

  #  assert_redirected_to hero_phrases_path
  #end
end
