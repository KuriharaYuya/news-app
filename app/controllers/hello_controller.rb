class HelloController < ApplicationController
  def greet
    render json: { message: 'Hello World!' }
  end
end
