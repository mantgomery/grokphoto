require 'spec_helper'

describe "Photog::Portfolios" do
  describe "GET /photog/portfolios" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get photog_portfolios_path
      response.status.should be(200)
    end
  end
end
