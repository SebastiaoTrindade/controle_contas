require "application_system_test_case"

class ContasTest < ApplicationSystemTestCase
  setup do
    @conta = contas(:one)
  end

  test "visiting the index" do
    visit contas_url
    assert_selector "h1", text: "Contas"
  end

  test "should create contas" do
    visit contas_url
    click_on "New contas"

    fill_in "Data vencimento", with: @conta.data_vencimento
    fill_in "Descricao", with: @conta.descricao
    fill_in "Nome empresa", with: @conta.nome_empresa
    fill_in "Status", with: @conta.status
    fill_in "Valor", with: @conta.valor
    click_on "Create Contas"

    assert_text "Contas was successfully created"
    click_on "Back"
  end

  test "should update Contas" do
    visit conta_url(@conta)
    click_on "Edit this contas", match: :first

    fill_in "Data vencimento", with: @conta.data_vencimento
    fill_in "Descricao", with: @conta.descricao
    fill_in "Nome empresa", with: @conta.nome_empresa
    fill_in "Status", with: @conta.status
    fill_in "Valor", with: @conta.valor
    click_on "Update Contas"

    assert_text "Contas was successfully updated"
    click_on "Back"
  end

  test "should destroy Contas" do
    visit conta_url(@conta)
    click_on "Destroy this contas", match: :first

    assert_text "Contas was successfully destroyed"
  end
end
