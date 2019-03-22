Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_WPQQGexWcpW8LoSeUgt0P4B100pzeZA7Dc'],
  :secret_key      => ENV['sk_test_GHreRFBpo2cgIO9eyMS0jVsX00mbLbUXbD']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
