# frozen_string_literal: true

require 'spec_helper'

describe AddRedirection do
  context 'call' do
    it 'return short slug' do
      expect(subject.call).not_to be_empty
    end

    context 'invalid url' do
      it 'return nil for empty string'
      it 'return nil for invalid url format'
      it 'return nil for url without host'
    end
  end
end
