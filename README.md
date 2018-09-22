# OmniAuth Rabobank

This is the official OmniAuth strategy for authenticating to Rabobank. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [Rabobank Applications Page](https://developer-sandbox.rabobank.nl/applications).

## Basic Usage

```ruby
use OmniAuth::Builder do
  provider :rabobank, ENV['RABOBANK_KEY'], ENV['RABOBANK_SECRET']
end
```
