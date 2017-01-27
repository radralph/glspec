require 'HTTParty'
require 'app_init.rb'

def okSms
  message = 'hello world'
  response = HTTParty.post($uris, :body => {:message => message, :address => App.address, :var =>  App.code})
  return response.code
end

#Successful Scenarios

def okCharging
  content = open.('#refEndpoint').read
  json = JSON.parse(content)
  refcode = json['result'].first['reference_code'].to_i+1 
  amount = '0.00'
  response = HTTParty.post($uric, :body => {:endUserId => App.address, :amount => amount, :referenceCode => increment.to_s, :transactionOperationStatus => 'Charged', :var => App.code }) 
  return response.code  
end

def okLBS
  response = HTTParty.get(App.uril)
  return response.code
end

def okDn
  response = HTTParty.get()
  return response.code
end

#Failing Scenarios

def smsFail1 
  response = HTTParty.post($uris, :body => {:message => App.message, :var => App.code})
end

def smsFail2
  response = HTTParty.post($uribp, :body => {:address => App.address })
end

def smsFail3
  response = HTTParty.post($uri, :body => {:address => 'asd', :message => message})
end
