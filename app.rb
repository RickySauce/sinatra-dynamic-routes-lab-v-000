require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @result = params[:number].to_i**2
    "#{@result}"
  end

  get '/say/:number/:phrase' do
    @total_phrase = params[:number].to_i.times {params[:phrase]}
    @total_phrase
  end

end
