require 'spec_helper'

describe Translation do
  fixtures :translations

  it "count should return correct results" do
    Translation.count.should == 6
  end

  it "chained scopes should return correct results" do
    Translation.scoped({ :conditions => {:locale => :de.to_s} }).scoped({ :conditions => {:key => 'first'} }).count.should == 1
  end
end
