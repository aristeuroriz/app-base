# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  
  require 'devise/orm/active_record'

  config.secret_key = ENV['DEVISE_SECRET_TOKEN']

  # ==> Configuration for any authentication mechanism
  config.case_insensitive_keys = [:email]

  # Configure which authentication keys should have whitespace stripped.
  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  # ==> Configuration for :database_authenticatable
  config.stretches = Rails.env.test? ? 1 : 10

  # Setup a pepper to generate the encrypted password.
  # config.pepper = '00c238e95ba060033692952001d5f0568c1e1e6c3c736c8b71ac48f2cb337059fc0b71b8c0e3f816ec677fbfe76c7b9aff01d01596b4e2447a58ba91baee371e'

  # ==> Configuration for :confirmable
  config.reconfirmable = true

  # Defines which key will be used when confirming an account
  # config.confirmation_keys = [:email]

  # ==> Configuration for :rememberable
  config.expire_all_remember_me_on_sign_out = true

  # ==> Configuration for :validatable
  # Range for password length.
  config.password_length = 8..72

  # Email regex used to validate email formats.
  # config.email_regexp = /\A[^@]+@[^@]+\z/

  # ==> Configuration for :timeoutable
  # config.timeout_in = 30.minutes

  # ==> Configuration for :lockable
  # config.lock_strategy = :failed_attempts

  # Defines which key will be used when locking and unlocking an account
  # config.unlock_keys = [:email]

  # Defines which strategy will be used to unlock an account.
  # :email = Sends an unlock link to the user email
  # :time  = Re-enables login after a certain amount of time (see :unlock_in below)
  # :both  = Enables both strategies
  # :none  = No unlock strategy. You should handle unlocking by yourself.
  # config.unlock_strategy = :both

  # Number of authentication tries before locking an account if lock_strategy
  # is failed attempts.
  # config.maximum_attempts = 20

  # Time interval to unlock the account if :time is enabled as unlock_strategy.
  # config.unlock_in = 1.hour

  # Warn on the last attempt before the account is locked.
  # config.last_attempt_warning = true

  # ==> Configuration for :recoverable
  #
  # Defines which key will be used when recovering the password for an account
  # config.reset_password_keys = [:email]

  # Time interval you can reset your password with a reset password key.
  config.reset_password_within = 6.hours

  # The default HTTP method used to sign out a resource. Default is :delete.
  config.sign_out_via = :delete

  # ==> OmniAuth
  config.omniauth :facebook, ENV['FACEBOOK_ID'], ENV['FACEBOOK_TOKEN'], scope: 'email', info_fields: 'email, name'

  config.omniauth :twitter, ENV['TWITTER_ID'], ENV['TWITTER_TOKEN']
end
