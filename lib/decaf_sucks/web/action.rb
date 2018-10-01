# auto_register: false

require "json" # required for Hanami::Action::Flash to work
require "hanami/controller"
require "hanami/action/cookies"
require "hanami/action/csrf_protection"
require "hanami/action/session"
require "decaf_sucks/import"

module DecafSucks
  module Web
    class Action < Hanami::Action
      def self.inherited(klass)
        super

        # It would be nice if these could just be included on the top class,
        # rather than on subclasses via this inherited hook
        klass.include Hanami::Action::Cookies
        klass.include Hanami::Action::Session
        klass.include Hanami::Action::CSRFProtection
      end

      include Import[
        "assets",
        "web.action.configuration",
        view_context: "web.view.context",
      ]

      attr_reader :_deps

      def initialize(**deps)
        @_deps = deps
        super
      end

      def with(**new_deps)
        self.class.new(_deps.merge(new_deps))
      end

      private

      def render(view, req, res, **args)
        res.body = view.(context: view_context.with(view_context_options(req, res)), **args)
        res
      end

      def view_context_options(req, res)
        {
          assets: assets,
          csrf_token: req.session[Hanami::Action::CSRFProtection::CSRF_TOKEN],
          flash: res.flash,
        }
      end
    end
  end
end
