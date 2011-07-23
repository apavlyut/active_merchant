require 'test_helper'

class RbkMoneyNotificationTest < Test::Unit::TestCase
  include ActiveMerchant::Billing::Integrations

  def setup
    @rbk_money = RbkMoney::Notification.new(http_raw_data)
  end

  def test_accessors
    assert @rbk_money.complete?
    assert_equal "", @rbk_money.status
    assert_equal "", @rbk_money.transaction_id
    assert_equal "", @rbk_money.item_id
    assert_equal "", @rbk_money.gross
    assert_equal "", @rbk_money.currency
    assert_equal "", @rbk_money.received_at
    assert @rbk_money.test?
  end

  def test_compositions
    assert_equal Money.new(3166, 'USD'), @rbk_money.amount
  end

  # Replace with real successful acknowledgement code
  def test_acknowledgement    

  end

  def test_send_acknowledgement
  end

  def test_respond_to_acknowledge
    assert @rbk_money.respond_to?(:acknowledge)
  end

  private
  def http_raw_data
    ""
  end  
end
