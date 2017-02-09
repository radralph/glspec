require 'ipp.rb'

#-
describe "SMS API" do

  context "request with complete parameters" do 
    it "returns successful" do
      expect(okSms).to eq(201) 
    end
  end

  context "request without address parameter" do
    it "returns error" do
      expect(smsFail1).to eq(400)
    end
  end

  context "request without message parameter" do
    it "returns error" do
      expect(smsFail2).to eq(400)
    end
  end

  context "request without " do
    it "returns error" do
      expect(smsFail3).to eq(400)
    end
  end

end
#-
describe "Charging API" do
  
  context "request with complete parametrs" do
    it "returns successful" do
      expect(okCharging).to eq(201)
    end
  end

  context "request without address parameter" do
    it "returns error" do
      expect(smsFail1).to eq(401)
    end
  end

  context "request without message parameter" do  
    it "returns error" do
      expect(smsFail2.).to eq(401)
    end
  end

end
#-
describe "LBS API" do

  context "request with complete paramters" do
    it "returns successful" do
      expect(okLBS).to eq(201)
    end

end
#-
describe "DN API" do

  context "request with complete paramters" do
    it "return successful" do
      expect(okDN).to eq(201)
    end
  end

end
#-

