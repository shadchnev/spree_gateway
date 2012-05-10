module Spree
  class Gateway::PayPal < Gateway
    preference :login, :string
    preference :password, :string
    preference :signature, :string
    preference :currency, :string
    
    attr_accessible :preferred_login, :preferred_password, :preferred_signature, :preferred_currency

    def provider_class
      ActiveMerchant::Billing::PaypalGateway
    end
  end
end
