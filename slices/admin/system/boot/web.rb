DecafSucks::Admin::Slice.boot :web, namespace: true do |container|
  init do
    require "hanami/controller"
  end

  start do
    register "action.configuration", Hanami::Controller::Configuration.new
  end
end
