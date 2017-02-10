require 'app_init.rb'

#-Successful Scenarios
def okSms
  message = "Hello World"
  response = HTTParty.post($uris, :body => {:message => message, :address => App.address, :var =>  App.code})
  return response.code
end

def okCharging
  content = open.("#refEndpoint").read
  json = JSON.parse(content)
  refcode = json["result"].first['reference_code'].to_i+1 
  amount = "0.00"
  response = HTTParty.post($uric, :body => {:endUserId => App.address, :amount => amount, :referenceCode => increment.to_s, :transactionOperationStatus => "Charged", :var => App.code }) 
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
#SMS

#n-Missing address
def smsFail1 
  response = HTTParty.post($uris, :body => {message: App.message})
end

#n-Missing message
def smsFail2
  response = HTTParty.post($uribp, :body => {address: App.address })
end

#n-Invalid address
def smsFail3
  response = HTTParty.post($uri, :body => {address: "asd", message:  message})
end

#n-Invalid shortcode
def smsFail4
  response = HTTParty.post($urif, :body => {adress: App.address, message: App.message})
end

#n-Invalid Token 
def smsFail5
  response = HTTParty.post($urif, :body => {address: App.address, message: App.message})
end

#n-Invalid parameter
def smsFail6
  response = HTTParty.post($urif, :body => {address: App.address, message: App.message, invalid: "test"})
end

#b-missing app.code 
def smsFail7
  response = HTTParty.post($urif, :body => {address: App.address, message: App.message, code: 'zxc'})
end

#b-missing app_id
def smsFail8
  response = HTTParty.post($urif1, :body => {address: App.address, message: App.message, code: App.code})
end

#b-missing app_secret
def smsFail9
  response = HTTParty.post($urif2, :body => {address: App.address, message: App.message, code: App.code})
end

