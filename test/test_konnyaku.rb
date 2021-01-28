# frozen_string_literal: true

require "test_helper"
require "konnyaku"

class TestKonnyaku < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Konnyaku::VERSION
  end
end
