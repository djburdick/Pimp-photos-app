require 'spec_helper'

describe Authorization do

  before(:each) do
      @auth = Factory.create(:authorization)  
  end

  it "should find the auth record by uid and provider" do
    hash = { 'provider' => @auth.provider, 'uid' => @auth.uid }  
    Authorization.find_from_hash(hash).should_not eq nil         
  end
  
  it "should create the user and authorization" do
    
  end

end
