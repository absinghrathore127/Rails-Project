json.array!(@account_activations) do |account_activation|
  json.extract! account_activation, :id
  json.url account_activation_url(account_activation, format: :json)
end
