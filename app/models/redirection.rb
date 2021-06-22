# frozen_string_literal: true

class Redirection < ActiveRecord::Base
  validates_presence_of :url
  validates :slug, presence: true, uniqueness: true
end
