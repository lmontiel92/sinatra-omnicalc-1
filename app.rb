require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_new)
end

#Beginning of square page logic

get("/square/new") do
  erb(:square_new)
end

get("/square/results") do
  @user_square_input = params.fetch("user_number").to_f
  @user_square_result = @user_square_input**2

  erb(:square_results)
end

#Beginning of square root page logic

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @user_square_root_input = params.fetch("user_number").to_f
  @user_square_root_result = Math.sqrt(@user_square_root_input)

  erb(:square_root_results)
end
