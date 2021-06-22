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
    let(:slug) { 'abcdef' }
    let(:url) { 'https://cronofy.com' }
    before { Redirection.create(url: url, slug: slug) }

    it "redirect to original url" do
      get "/r/#{slug}"
      expect(last_response).to be_redirect
      expect(last_response.headers.dig('Location')).to eq(url)
    end

    it "return 404" do
      get "/r/fake"
      expect(last_response.status).to eq(404)
    end
  end
end
