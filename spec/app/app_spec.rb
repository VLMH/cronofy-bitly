require 'spec_helper'

describe App do
  context "GET /ping" do
    it "return 200 status" do
      get "/ping"
      expect(last_response.status).to eq(200)
    end
  end
end
