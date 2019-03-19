if ENV['RACK_ENV'] == 'production'
  MyAppName::Application.config.middleware.insert_before(Rack::Runtime, Rack::Rewrite) do
    r301 %r{.*}, 'https://mash-up1221.com$&', :if => Proc.new {|rack_env|
      rack_env['SERVER_NAME'] == 'mash-upkun.herokuapp.com'
    }
  end
  MyAppName::Application.config.middleware.insert_before(Rack::Runtime, Rack::Rewrite) do
    r301 %r{.*}, 'https://mash-up1221.com$&', :if => Proc.new {|rack_env|
      rack_env['SERVER_NAME'] == 'www.mash-up1221.com'
    }
  end
end