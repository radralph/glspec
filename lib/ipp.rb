require 'HTTParty'
require 'app_init.rb'
#init

$uris = "https://devapi.globelabs.com.ph/smsmessaging/v1/outbound/3822/requests?app_id=#{App.app_id}&app_secret=#{App.app_secret}"

def successfulSms
  puts $uri
  message = 'hello world'
  response = HTTParty.post($uris, :body => {:message => message, :address => App.address, :var =>  App.code})
  return response.code
end

