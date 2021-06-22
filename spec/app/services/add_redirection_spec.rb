# frozen_string_literal: true

require 'spec_helper'

describe AddRedirection do
  context 'call' do
    it 'return short slug' do
      expect(subject.call(url: 'https://google.com')).not_to be_empty
    end

    it 'create redirection and persist to database' do
      expect { subject.call(url: 'https://cronofy.com') }.to change(Redirection, :count).by(1)
    end

    context 'existing redirection' do
      let(:slug) { 'abcdef' }
      let(:url) { 'http://google.com' }
      before { Redirection.create(url: url, slug: slug) }

      it { expect(subject.call(url: url)).to eq(slug) }
    end

    context 'invalid url' do
      [
        '',
        'invalid',
        'http:',
        'ws://google.com'
      ].each do |input|
        it { expect(subject.call(url: input)).to be_nil }
      end
    end
  end
end
