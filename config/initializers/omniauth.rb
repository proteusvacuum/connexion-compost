Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, 'OSVEIYHgInoc5z8PMTMNQ', 'ttNncjAMdMfIbYnd8VDK5a6whlXi64OvUrWPYo4kxY'
end