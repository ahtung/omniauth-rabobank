require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Rabobank < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://api-sandbox.rabobank.nl',
        :authorize_url => 'https://api-sandbox.rabobank.nl/openapi/sandbox/oauth2/authorize',
        :token_url => 'https://api-sandbox.rabobank.nl/openapi/sandbox/oauth2/token'
      }

      def request_phase
        super
      end

      def authorize_params
        super.tap do |params|
          %w[scope client_options].each do |v|
            if request.params[v]
              params[v.to_sym] = request.params[v]
            end
          end
        end
      end

      uid do
        puts options
        request.params[options.uid_field.to_s]
      end

      info do
        options.fields.inject({}) do |hash, field|
          hash[field] = request.params[field.to_s]
          hash
        end
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end

OmniAuth.config.add_camelization 'rabobank', 'Rabobank'
