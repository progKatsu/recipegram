require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Recipegram
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    
    #rails6では、DNS再バインド攻撃を防ぐために、自分自身からのアクセスしか許可していない
    #そこで、cloud9上で行われるamazonドメインからのアクセスが拒否される状態のため、許可するように
    #下記に記述
    config.hosts << ".amazonaws.com"
    config.hosts << "7196d950b89042ecad2277ac2c79afa5.vfs.cloud9.us-east-1.amazonaws.com"
    config.time_zone = 'Tokyo'
  end
end
