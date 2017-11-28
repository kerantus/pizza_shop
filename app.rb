#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizza_shop.db"

class Product < ActiveRecord::Base
end



get '/' do
	erb :index
end

get '/about' do
	erb :about
end

get '/new' do
	erb :new
  end


post '/new' do
  Product.create params[:descrip]
  erb :new
end

get '/catalog' do
	@catalog = Product.all
	erb :catalog
end