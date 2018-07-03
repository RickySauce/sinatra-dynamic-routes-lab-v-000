require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
    binding.pry
  end

  get '/square/:number' do
    @result = params[:number].to_i**2
    "#{@result}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @number.times do
      puts @phrase
    end
    binding.pry
  end

end
