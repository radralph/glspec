require 'ipp.rb'
describe "SMS" do
  it 'Successful SMS' do
  expect(okSms).to eq(201) 
  end

  it 'Successful Charging' do
  expect(okCharging).to eq(201)
  end

end  
