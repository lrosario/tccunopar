require 'test_helper'

class FornecedoresControllerTest < ActionController::TestCase
  setup do
    @fornecedore = fornecedores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fornecedores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fornecedore" do
    assert_difference('Fornecedore.count') do
      post :create, fornecedore: { codigo: @fornecedore.codigo, endereco: @fornecedore.endereco, nome: @fornecedore.nome, telefone: @fornecedore.telefone }
    end

    assert_redirected_to fornecedore_path(assigns(:fornecedore))
  end

  test "should show fornecedore" do
    get :show, id: @fornecedore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fornecedore
    assert_response :success
  end

  test "should update fornecedore" do
    put :update, id: @fornecedore, fornecedore: { codigo: @fornecedore.codigo, endereco: @fornecedore.endereco, nome: @fornecedore.nome, telefone: @fornecedore.telefone }
    assert_redirected_to fornecedore_path(assigns(:fornecedore))
  end

  test "should destroy fornecedore" do
    assert_difference('Fornecedore.count', -1) do
      delete :destroy, id: @fornecedore
    end

    assert_redirected_to fornecedores_path
  end
end
