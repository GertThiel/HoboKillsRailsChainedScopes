require 'spec_helper'

describe Translation do
  fixtures :translations

  it "count should return correct results" do
    Translation.count.should == 6
  end

  # I applied 0001-873-simple-hack-fix-for-chained-scopes.patch with an
  # initializer in
  # RAILS_ROOT/config/initializers/0001-873-simple-hack-fix-for-chained-scopes.patch.rb

  # 0001-873-simple-hack-fix-for-chained-scopes.patch fixes this:
  #
  it "chained scopes should return correct results" do
    Translation.scoped({ :conditions => {:locale => :de.to_s} }).scoped({ :conditions => {:key => 'first'} }).count.should == 1
  end

  # 0001-873-simple-hack-fix-for-chained-scopes.patch DOES NOT fix this:
  #
  it "chained scopes should return correct results (2)" do
    Translation.locale(:de).key('first').count.should == 1
  end
end
