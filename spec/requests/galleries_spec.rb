require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/galleries" do
  before(:each) do
    @response = request("/galleries")
  end
end