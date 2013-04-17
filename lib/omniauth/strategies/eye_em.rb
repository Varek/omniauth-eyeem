require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class AngelList < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://www.eyeem.com/api/v2',
        :authorize_url => 'http://www.eyeem.com/oauth/authorize',
        :token_url => 'http://www.eyeem.com/api/v2/oauth/token'
      }

      option :name, "eye_em"

      uid { raw_info['id'] }

      info do
        {
          #:nickname => raw_info['username'],
          #:name => raw_info['name'],
          #:image => raw_info['avatar_image']['url'],
          #:type => raw_info['type'],
          #:counts => raw_info['counts']
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('users/me').parsed
      end
    end
  end
end

OmniAuth.config.add_camelization 'eyeem', 'EyeEm'