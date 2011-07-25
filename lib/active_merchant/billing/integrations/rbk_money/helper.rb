module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module RbkMoney
        class Helper < ActiveMerchant::Billing::Integrations::Helper
          
          def initialize(order, account, options = {})
            super
          end
          
          mapping :account, 'eshopId'
          mapping :amount, 'recipientAmount'
          mapping :currency, 'recipientCurrency'
          mapping :order, 'orderId'
          mapping :preference, 'preference'
          
          mapping :return_url, 'successUrl'
          mapping :cancel_return_url, 'failUrl'
          
          mapping :first_name, 'user_email'
          mapping :email, 'user_email'
          mapping :payment_method, 'userField_1'
          mapping :gateway_code, 'userField_2'
        end
      end
    end
  end
end
