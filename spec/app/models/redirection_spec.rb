# frozen_string_literal: true

require 'spec_helper'

describe Redirection do
  context 'validation' do
    context 'valid' do
      subject { Redirection.new(url: 'http://google.com', slug: 'ggle').valid? }
      it { is_expected.to be_truthy }
    end

    context 'no url' do
      subject { Redirection.new(slug: 'ggle').valid? }
      it { is_expected.to be_falsy }
    end

    context 'no slug' do
      subject { Redirection.new(url: 'http://google.com').valid? }
      it { is_expected.to be_falsy }
    end
  end
end
