require 'HTTParty'
require 'app_init.rb'
#init

$uris = "https://devapi.globelabs.com.ph/smsmessaging/v1/outbound/3822/requests?app_id=#{App.app_id}&app_secret=#{App.app_secret}"
$uric = "https://devapi.globelabs.com.ph/payment/v1/transactions/amount?app_id#{App.app_id}&app_secret=#{App.app.secret}"

def okSms
  message = 'hello world'
  response = HTTParty.post($uris, :body => {:message => message, :address => App.address, :var =>  App.code})
  return response.code
end

def okCharging
  refCode =  
  amount =
  response = 
  return response.code  
end

def okLBS
  response = 
  return response.code
end
