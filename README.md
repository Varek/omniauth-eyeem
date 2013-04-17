# Omniauth::EyeEm

Omniauth Strategy for [EyeEm](http://www.eyeem.com)

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-eyeem'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-eyeem

## Usage

### Sinatra Example
```ruby

require 'sinatra'
require 'omniauth'
require 'omniauth-eyeem'
require 'json'

use Rack::Session::Cookie
use OmniAuth::Builder do
  provider :eyeem, 'client_id', 'client_secret'
end

get '/auth/:provider/callback' do
  # Do something with auth_hash
  erb "<h1>eyeem</h1>
        <pre>#{JSON.pretty_generate(auth_hash)}</pre>"
end

def auth_hash
  request.env['omniauth.auth']
end

```

## Resources


* [EyeEm API Documentation](https://github.com/eyeem/Public-API)
* [EyeEm App Registration](http://www.eyeem.com/developers/myapps)
* [EyeEmConnector - EyeEm API Wrapper in Ruby](https://github.com/Varek/EyeEmConnector)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Liscense
Copyright (c) 2013 André Rieck

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
