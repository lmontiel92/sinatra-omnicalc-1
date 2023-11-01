require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do

  erb(:square_new)
end

get("/square/results") do
  @user_square_input = params.fetch("user_number").to_f
  @user_square_result = @user_square_input**2

  erb(:square_results)
end
