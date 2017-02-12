#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base
	   
end




get '/' do
	@products = Product.all
	erb :index
end

get '/about' do
	erb :about 

	end

post '/cart' do 
	@orders_input = params[:orders]
	@items = parse_orders_input (@orders_input)

	@items.each do |item|
		#key, value
		item[0] = Product.find(item[0])
	end

	erb :cart
end 

def parse_orders_input (orders_input)

s1 = orders_input.split(/,/)

arr = []

	s1.each do |x|
	s2 = x.split(/=/)
	s3 = s2[0].split(/_/)
	key = s3[1]
	value = s2[1]

	arr2 = [key,value]
	arr.push arr2 
	
	
	end
	return arr
end
