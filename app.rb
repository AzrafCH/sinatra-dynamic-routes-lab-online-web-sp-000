require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get 'reversename/:name' do

  end

  get 'square/:number' do
    #that accepts a number and returns the square of that number.
  end

  get '/say/:number/:phrase' do
    #accepts a number and a phrase and returns that phrase in a string the number of times given.

  end



end
