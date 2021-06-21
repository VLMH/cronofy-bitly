# frozen_string_literal: true

class Redirection < ActiveRecord::Base
  validates_presence_of :url, :slug
end
