Bugsnag.configure do |config|
  config.api_key = Rails.application.credentials.bugsnag_key
  config.notify_release_stages = ['production', 'staging']
end
