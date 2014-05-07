require 'sinatra'
require './expense'

expenses =  []

get '/' do
	@expenses = expenses
	erb :index
end

get '/index' do
	erb :index
end

get '/new' do
	erb :new
end

post '/save' do
	expense = Expense.new(params[:id], params[:item], params[:amount])
	expenses << expense
	@expenses = expenses
	erb :index
end

get '/show/:id' do
	@expenses = expenses
	erb :show
end