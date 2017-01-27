require 'ipp.rb'

describe "SMS" do
 
  it 'Successful SMS' do
    expect(okSms).to eq(201) 
  end

  it 'Successful Charging' do
    expect(okCharging).to eq(201)
  end

  it 'Successful LBS' do
    expect(okLBS).to eq(201)
  end

  it 'Successful DN' do
    expect(okDN).to eq(201)
  end

  it 'Missing address parameter' do
    expect(smsFail1).to eq(401)
  end

  it 'Missing message parameter' do
    expect(smsFail2).to eq(401)
  end

end  
