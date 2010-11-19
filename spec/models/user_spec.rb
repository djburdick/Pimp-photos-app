require 'spec_helper'

describe User do

  it "should create a user record from hash" do    
    name = 'DJ B'
    hash = { 'user_info' => {'name' => name}}
    User.create_from_hash!(hash)
    User.first(:conditions => {:name => name}).name.should == name
  end

end
