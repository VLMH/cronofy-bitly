# frozen_string_literal: true

require 'securerandom'

class AddRedirection
  # @param url [String]
  # @return [String, nil]
  def call()
    SecureRandom.urlsafe_base64(4)
  end
end
