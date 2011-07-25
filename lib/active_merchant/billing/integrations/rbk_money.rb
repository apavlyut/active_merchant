module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      
      # Documentation: 
      # * http://www.rbkmoney.ru/varianty-podklyucheniya
      # * http://www.rbkmoney.ru/manual
      
      module RbkMoney
        autoload :Helper, File.dirname(__FILE__) + '/rbk_money/helper.rb'
        autoload :Notification, File.dirname(__FILE__) + '/rbk_money/notification.rb'
        # autoload :Return, File.dirname(__FILE__) + '/rbk_money/return.rb'
     
        mattr_accessor :service_url
        self.service_url = 'https://rbkmoney.ru/acceptpurchase.aspx'
        
        mattr_accessor :eshopId
        mattr_accessor :signature_parameter_name
        self.signature_parameter_name = 'SignatureValue'

        def self.helper(order, account, options = {})
          Helper.new(order, account, options)
        end

        def self.notification(query_string, options = {})
          Notification.new(query_string, options)
        end

        def self.return(query_string)
          Return.new(query_string)
        end
      end
    end
  end
end
