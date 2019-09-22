# frozen_string_literal: true
# auto_register: false

require "dry/matcher/result_matcher"
require "dry/monads"

module DecafSucks
  class Operation
    def self.inherited(subclass)
      super
      subclass.include Dry::Monads[:do, :result]
      subclass.include Dry::Matcher::ResultMatcher.for(:call)
    end
  end
end
