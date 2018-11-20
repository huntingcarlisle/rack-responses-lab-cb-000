class Application
 
  def call(env)
    resp = Rack::Response.new
 
    hour = Time.now.hour
    
    if hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"

    resp.finish
  end
  end
 
end