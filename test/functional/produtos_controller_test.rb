require 'test_helper'

class ProdutosControllerTest < ActionController::TestCase
  setup do
    @produto = produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produto" do
    assert_difference('Produto.count') do
      post :create, produto: { codigo: @produto.codigo, descricao: @produto.descricao, margem_de_lucro: @produto.margem_de_lucro, preco_de_custo: @produto.preco_de_custo, preco_de_venda: @produto.preco_de_venda, setor: @produto.setor }
    end

    assert_redirected_to produto_path(assigns(:produto))
  end

  test "should show produto" do
    get :show, id: @produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produto
    assert_response :success
  end

  test "should update produto" do
    put :update, id: @produto, produto: { codigo: @produto.codigo, descricao: @produto.descricao, margem_de_lucro: @produto.margem_de_lucro, preco_de_custo: @produto.preco_de_custo, preco_de_venda: @produto.preco_de_venda, setor: @produto.setor }
    assert_redirected_to produto_path(assigns(:produto))
  end

  test "should destroy produto" do
    assert_difference('Produto.count', -1) do
      delete :destroy, id: @produto
    end

    assert_redirected_to produtos_path
  end
end
