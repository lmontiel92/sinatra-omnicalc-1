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

#Beginning of payment page logic

get("/payment/new") do
  erb(:payment_new)
end

get("/payment/results") do
  @user_APR_input = params.fetch("user_APR").to_f/100
  @user_Years_input = params.fetch("user_Years").to_f
  @user_Principal_input = params.fetch("user_Principal").to_f

  pmt_num = (@user_APR_input/12)*@user_Principal_input
  pmt_denom = 1-((1+@user_APR_input/12)**-(@user_Years_input*12))

  @user_payment_result = pmt_num/pmt_denom

  @user_APR_input = @user_APR_input*100

  erb(:payment_results)
end
