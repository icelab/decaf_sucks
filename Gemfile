source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby "2.6.2"

gem "rake"
gem "snowflakes", github: "icelab/snowflakes"
# gem "snowflakes", path: "~/src/github.com/icelab/snowflakes"
gem "hanami-cli", github: "hanami/cli", branch: "unstable"
# gem "hanami-cli", path: "~/src/github.com/hanami/cli"

# Web framework
gem "dry-system"
gem "dry-web"
gem "hanami-utils", github: "hanami/utils", branch: "unstable"
gem "hanami-router", github: "hanami/router", branch: "unstable"
gem "hanami-controller", github: "hanami/controller", branch: "unstable"
gem "puma"
gem "rack"

# Persistence
gem "pg"
gem "rom", github: "rom-rb/rom", branch: "master"
gem "rom-sql", github: "rom-rb/rom-sql", branch: "master"
gem "sequel_pg"

# Application dependencies
gem "dry-auto_inject"
gem "dry-matcher"
gem "dry-monads"
gem "dry-schema", "~> 0.5"
gem "dry-struct"
gem "dry-transaction"
gem "dry-types"
gem "dry-validation", "1.0.0.rc1"
gem "dry-view"
gem "down"
gem "slim"

group :development, :test do
  gem "guard"
  gem "guard-rack"
  gem "pry-byebug", platform: :mri
end

group :test do
  gem "capybara"
  gem "capybara-screenshot"
  gem "poltergeist"
  gem "rspec"
end
