# frozen_string_literal: true

require 'spec_helper'

describe App do
  context "GET /ping" do
    it "return 200 status" do
      get "/ping"
      expect(last_response.status).to eq(200)
    end
  end

  context "GET /r/:slug" do
    it "redirect to google.com" do
      get "/r/abcdef"
      expect(last_response).to be_redirect
      expect(last_response.headers.dig('Location')).to eq('https://google.com')
    end
  end
end
