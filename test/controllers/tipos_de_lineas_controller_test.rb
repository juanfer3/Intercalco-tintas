require 'test_helper'

class TiposDeLineasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_de_linea = tipos_de_lineas(:one)
  end

  test "should get index" do
    get tipos_de_lineas_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_de_linea_url
    assert_response :success
  end

  test "should create tipo_de_linea" do
    assert_difference('TipoDeLinea.count') do
      post tipos_de_lineas_url, params: { tipo_de_linea: { caracteristica: @tipo_de_linea.caracteristica, descripcion_linea: @tipo_de_linea.descripcion_linea, estado: @tipo_de_linea.estado } }
    end

    assert_redirected_to tipo_de_linea_url(TipoDeLinea.last)
  end

  test "should show tipo_de_linea" do
    get tipo_de_linea_url(@tipo_de_linea)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_de_linea_url(@tipo_de_linea)
    assert_response :success
  end

  test "should update tipo_de_linea" do
    patch tipo_de_linea_url(@tipo_de_linea), params: { tipo_de_linea: { caracteristica: @tipo_de_linea.caracteristica, descripcion_linea: @tipo_de_linea.descripcion_linea, estado: @tipo_de_linea.estado } }
    assert_redirected_to tipo_de_linea_url(@tipo_de_linea)
  end

  test "should destroy tipo_de_linea" do
    assert_difference('TipoDeLinea.count', -1) do
      delete tipo_de_linea_url(@tipo_de_linea)
    end

    assert_redirected_to tipos_de_lineas_url
  end
end
