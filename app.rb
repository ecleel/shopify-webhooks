# cat hello_world.rb
require "cuba"
require "cuba/safe"

Cuba.use Rack::Session::Cookie, secret: "t13mPA2injWVfCjetw3K0Ttmd021GlDU"

Cuba.plugin Cuba::Safe

Cuba.define do

  on "order" do
    on "created" do
      puts req.params
      res.status = 200
      res.write "hello"
    end
  end
  
  on "cart" do
    on "created" do
      puts req.params
      res.status = 200
      res.write "hello"
    end
  end

end