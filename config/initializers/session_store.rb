# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_upload_session',
  :secret      => '9b1aefc33365bd9a7c4b332b6b7874dd20d36978d6e5aab2bcaaa39b7cf5e55c8e15e8ffb66a31af8e74fae13b0bc86a145147466cf0b49e8adea0f203488cae'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

ActionController::Dispatcher.middleware.insert_before(
ActionController::Session::CookieStore, FlashSessionCookieMiddleware, ActionController::Base.session_options[:key]
)

