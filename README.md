# Ticker
### Ticker: A blogging and shopping portal

The following section in "/config/environments/development.rb" should be changed, add your GMail user and password here.

```
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    user_name:            '',
    password:             '',
    authentication:       'plain',
    enable_starttls_auto: true
  }
```