class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..3)
    num_2 = Kernel.rand(1..3)
    num_3 = Kernel.rand(1..3)
    
    resp.write "Num_1 = #{num_1}"
    resp.write "Num_2 = #{num_2}"
    resp.write "Num_3 = #{num_3}\n"

    if num_1 == num_2 && num_2 == num_3
      resp.write "You Win"
    else 
      resp.write "You Lose"
    end

    resp.finish

  end

end
