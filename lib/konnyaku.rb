# frozen_string_literal: true

require_relative "konnyaku/version"
require_relative "konnyaku/translate"
require_relative "konnyaku/konnyaku"

class Konnyaku
  class Error < StandardError; end
  # Your code goes here...
end

Konnyaku.run
