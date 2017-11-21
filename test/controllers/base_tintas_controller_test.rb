require 'test_helper'

class BaseTintasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @base_tinta = base_tintas(:one)
  end

  test "should get index" do
    get base_tintas_url
    assert_response :success
  end

  test "should get new" do
    get new_base_tinta_url
    assert_response :success
  end

  test "should create base_tinta" do
    assert_difference('BaseTinta.count') do
      post base_tintas_url, params: { base_tinta: { codigo: @base_tinta.codigo, descripcion_base: @base_tinta.descripcion_base, estado: @base_tinta.estado, tipo_de_linea_id: @base_tinta.tipo_de_linea_id } }
    end

    assert_redirected_to base_tinta_url(BaseTinta.last)
  end

  test "should show base_tinta" do
    get base_tinta_url(@base_tinta)
    assert_response :success
  end

  test "should get edit" do
    get edit_base_tinta_url(@base_tinta)
    assert_response :success
  end

  test "should update base_tinta" do
    patch base_tinta_url(@base_tinta), params: { base_tinta: { codigo: @base_tinta.codigo, descripcion_base: @base_tinta.descripcion_base, estado: @base_tinta.estado, tipo_de_linea_id: @base_tinta.tipo_de_linea_id } }
    assert_redirected_to base_tinta_url(@base_tinta)
  end

  test "should destroy base_tinta" do
    assert_difference('BaseTinta.count', -1) do
      delete base_tinta_url(@base_tinta)
    end

    assert_redirected_to base_tintas_url
  end
end
