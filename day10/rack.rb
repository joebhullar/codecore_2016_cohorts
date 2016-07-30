require 'rack'

class MyApp
    def self.call(_env)
        req = Rack::Request.new(env)

        req.params
        [200, { 'Content-Type' => 'text/html' },
         ['Hello w3orld', '!!!']]
    end
end

Rack::Handler::WEBrick.run MyApp
