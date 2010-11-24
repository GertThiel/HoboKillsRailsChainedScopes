require 'spec_helper'

describe Translation do
  before(:each) do
    @valid_attributes = {
      :locale => "value for locale",
      :key => "value for key",
      :value => "value for value"
    }
  end

  it "should create a new instance given valid attributes" do
    Translation.create!(@valid_attributes)
  end
end
