require "dry/view/context"

module DecafSucks
  module Web
    module View
      class Context < Dry::View::Context
        def assets
          self[:assets]
        end

        def csrf_token
          self[:csrf_token]
        end

        def flash
          self[:flash]
        end

        def flash?
          %i[notice alert].any? { |type| flash[type] }
        end

        private

        def [](name)
          _options.fetch(name)
        end
      end
    end
  end
end
