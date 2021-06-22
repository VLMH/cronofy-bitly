# frozen_string_literal: true

require 'securerandom'
require 'uri'

class AddRedirection
  # @param url [String]
  # @return [String, nil]
  def call(url:)
    input = url.to_s
    return if input.empty?

    uri = URI.parse(input)
    return unless uri.is_a?(URI::HTTP) && uri.host

    redirection = Redirection.find_by(url: input)
    return redirection.slug if redirection

    slug = SecureRandom.urlsafe_base64(4)
    Redirection.create(url: url, slug: slug)

    slug
  rescue URI::InvalidURIError
    nil
  end
end
