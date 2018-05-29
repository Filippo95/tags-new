require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  setup do
    @tag = tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag" do
    assert_difference('Tag.count') do
      post :create, tag: { codicetelecomando: @tag.codicetelecomando, cognome: @tag.cognome, data: @tag.data, data_attivazione: @tag.data_attivazione, data_disattivazione: @tag.data_disattivazione, data_setup_agg_firmware: @tag.data_setup_agg_firmware, data_sostituzione: @tag.data_sostituzione, internal_sn: @tag.internal_sn, nome: @tag.nome, note: @tag.note, seggnatario: @tag.seggnatario, serial_number: @tag.serial_number, sostituto_da: @tag.sostituto_da, stato: @tag.stato }
    end

    assert_redirected_to tag_path(assigns(:tag))
  end

  test "should show tag" do
    get :show, id: @tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag
    assert_response :success
  end

  test "should update tag" do
    patch :update, id: @tag, tag: { codicetelecomando: @tag.codicetelecomando, cognome: @tag.cognome, data: @tag.data, data_attivazione: @tag.data_attivazione, data_disattivazione: @tag.data_disattivazione, data_setup_agg_firmware: @tag.data_setup_agg_firmware, data_sostituzione: @tag.data_sostituzione, internal_sn: @tag.internal_sn, nome: @tag.nome, note: @tag.note, seggnatario: @tag.seggnatario, serial_number: @tag.serial_number, sostituto_da: @tag.sostituto_da, stato: @tag.stato }
    assert_redirected_to tag_path(assigns(:tag))
  end

  test "should destroy tag" do
    assert_difference('Tag.count', -1) do
      delete :destroy, id: @tag
    end

    assert_redirected_to tags_path
  end
end
