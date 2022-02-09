# Something that responds to call, that's what Rack demands
# class Application
#   def call(env)
#     return 200, { 'Content-Type' => 'text/html' }, pretty_response
#   end

#   def pretty_response
#     (Time.now.hour) > 12 ? resp.write "Good Afternoon!" : resp.write "Good Morning!"
#   end
# end

class Application
  def call(env)
    resp = Rack::Response.new

    if (Time.now.hour) >= 12
      resp.write 'Good Afternoon'
    else
      resp.write 'Good Morning'
    end
    resp.finish
  end
end
