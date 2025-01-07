require "test_helper"

class ContasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conta = contas(:one)
  end

  test "should get index" do
    get contas_index_url
    assert_response :success
  end

  test "should get new" do
    get new_conta_url
    assert_response :success
  end

  test "should create conta" do
    assert_difference("Contas.count") do
      post contas_index_url, params: { conta: { data_vencimento: @conta.data_vencimento, descricao: @conta.descricao, nome_empresa: @conta.nome_empresa, status: @conta.status, valor: @conta.valor } }
    end

    assert_redirected_to conta_url(Contas.last)
  end

  test "should show conta" do
    get conta_url(@conta)
    assert_response :success
  end

  test "should get edit" do
    get edit_conta_url(@conta)
    assert_response :success
  end

  test "should update conta" do
    patch conta_url(@conta), params: { conta: { data_vencimento: @conta.data_vencimento, descricao: @conta.descricao, nome_empresa: @conta.nome_empresa, status: @conta.status, valor: @conta.valor } }
    assert_redirected_to conta_url(@conta)
  end

  test "should destroy conta" do
    assert_difference("Contas.count", -1) do
      delete conta_url(@conta)
    end

    assert_redirected_to contas_index_url
  end
end
