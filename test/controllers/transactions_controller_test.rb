require 'test_helper'

class TransactionsControllerTest < ActionController::TestCase
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post :create, transaction: { batt: @transaction.batt, batt_mv: @transaction.batt_mv, codice_utente: @transaction.codice_utente, controlli: @transaction.controlli, data: @transaction.data, date: @transaction.date, dhcp: @transaction.dhcp, direzione: @transaction.direzione, edizione: @transaction.edizione, esito: @transaction.esito, fullcode: @transaction.fullcode, gate_state: @transaction.gate_state, gate_state_ex: @transaction.gate_state_ex, io: @transaction.io, iox: @transaction.iox, lettore: @transaction.lettore, localip: @transaction.localip, localtransaction: @transaction.localtransaction, mac: @transaction.mac, ora: @transaction.ora, slave_id: @transaction.slave_id, slave_state_ex: @transaction.slave_state_ex, sorgente: @transaction.sorgente, term_id: @transaction.term_id, time: @transaction.time, tipo: @transaction.tipo, tracciato_tessera: @transaction.tracciato_tessera, varco: @transaction.varco }
    end

    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should show transaction" do
    get :show, id: @transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction
    assert_response :success
  end

  test "should update transaction" do
    patch :update, id: @transaction, transaction: { batt: @transaction.batt, batt_mv: @transaction.batt_mv, codice_utente: @transaction.codice_utente, controlli: @transaction.controlli, data: @transaction.data, date: @transaction.date, dhcp: @transaction.dhcp, direzione: @transaction.direzione, edizione: @transaction.edizione, esito: @transaction.esito, fullcode: @transaction.fullcode, gate_state: @transaction.gate_state, gate_state_ex: @transaction.gate_state_ex, io: @transaction.io, iox: @transaction.iox, lettore: @transaction.lettore, localip: @transaction.localip, localtransaction: @transaction.localtransaction, mac: @transaction.mac, ora: @transaction.ora, slave_id: @transaction.slave_id, slave_state_ex: @transaction.slave_state_ex, sorgente: @transaction.sorgente, term_id: @transaction.term_id, time: @transaction.time, tipo: @transaction.tipo, tracciato_tessera: @transaction.tracciato_tessera, varco: @transaction.varco }
    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete :destroy, id: @transaction
    end

    assert_redirected_to transactions_path
  end
end
