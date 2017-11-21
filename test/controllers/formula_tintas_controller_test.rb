require 'test_helper'

class FormulaTintasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formula_tinta = formula_tintas(:one)
  end

  test "should get index" do
    get formula_tintas_url
    assert_response :success
  end

  test "should get new" do
    get new_formula_tinta_url
    assert_response :success
  end

  test "should create formula_tinta" do
    assert_difference('FormulaTinta.count') do
      post formula_tintas_url, params: { formula_tinta: { base_tinta_id: @formula_tinta.base_tinta_id, cantidad: @formula_tinta.cantidad, estado: @formula_tinta.estado, tinta_id: @formula_tinta.tinta_id } }
    end

    assert_redirected_to formula_tinta_url(FormulaTinta.last)
  end

  test "should show formula_tinta" do
    get formula_tinta_url(@formula_tinta)
    assert_response :success
  end

  test "should get edit" do
    get edit_formula_tinta_url(@formula_tinta)
    assert_response :success
  end

  test "should update formula_tinta" do
    patch formula_tinta_url(@formula_tinta), params: { formula_tinta: { base_tinta_id: @formula_tinta.base_tinta_id, cantidad: @formula_tinta.cantidad, estado: @formula_tinta.estado, tinta_id: @formula_tinta.tinta_id } }
    assert_redirected_to formula_tinta_url(@formula_tinta)
  end

  test "should destroy formula_tinta" do
    assert_difference('FormulaTinta.count', -1) do
      delete formula_tinta_url(@formula_tinta)
    end

    assert_redirected_to formula_tintas_url
  end
end
