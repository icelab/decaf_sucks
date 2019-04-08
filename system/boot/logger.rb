DecafSucks::Application.boot :logger do |container|
  start do
    use :settings

    if container[:settings].log_to_stdout
      $stdout.sync = true
      logger.reopen($stdout)
    end
  end
end
