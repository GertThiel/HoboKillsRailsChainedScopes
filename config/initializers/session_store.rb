# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ChainedScopes_session',
  :secret      => '6f9d0cd0dda028af00bad8ad358d58500127747068a347a42bd907b33971436aff9127aceb1ebf7d94a4f6adf7ff148bbc4636af53e3674708d26fc388fa742d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
