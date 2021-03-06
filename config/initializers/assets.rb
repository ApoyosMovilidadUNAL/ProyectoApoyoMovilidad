# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( css/base.css )
Rails.application.config.assets.precompile += %w( css/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( css/phone.css )
Rails.application.config.assets.precompile += %w( css/printer.css )
Rails.application.config.assets.precompile += %w( css/reset.css )
Rails.application.config.assets.precompile += %w( css/small.css )
Rails.application.config.assets.precompile += %w( css/tablet.css )
Rails.application.config.assets.precompile += %w( css/unal.css )

Rails.application.config.assets.precompile += %w( js/html5dhiv.js )
Rails.application.config.assets.precompile += %w( js/jquery.js )
Rails.application.config.assets.precompile += %w( js/matchmedia.addListener.js )
Rails.application.config.assets.precompile += %w( js/matchmedia.polyfill.js )
Rails.application.config.assets.precompile += %w( js/respond.js )
Rails.application.config.assets.precompile += %w( js/unal.js )
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
