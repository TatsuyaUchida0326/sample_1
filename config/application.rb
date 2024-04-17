require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# 追加する行
require 'devise/orm/active_record'

module Sample1
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # 言語設定を追加
    config.i18n.default_locale = :ja  # デフォルトの言語を日本語に設定
    config.i18n.available_locales = [:en, :ja]  # 利用可能な言語

    # フォールバック設定を追加
    config.i18n.fallbacks = [:en]

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
