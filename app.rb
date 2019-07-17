require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get 'reversename/:name' do
    #that accepts a name and renders the name backwards.
    params[:name].reverse
  end

  get 'square/:number' do
    #that accepts a number and returns the square of that number.
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    #accepts a number and a phrase and returns that phrase in a string the number of times given.
    @num_of_times = params[:phrase].to_i
    @phrase = params[:phrase].to_s

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #that accepts five words and returns a string containing all five words
    @string = params[:word1].to_s + " " + params[:word2].to_s + " " + params[:word3].to_s + " " + params[:word4].to_s + " " + params[:word5].to_s + "."
    "#{@string}"
  end

  get '/:operation/:number1/:number2' do
    # that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when "add"
      answer = (num1 + num2).to_s
    when "subtract"
      answer = (num1 - num2).to_s
    when "multiply"
      answer = (num1 * num2).to_s
    when "divide"
      answer = (num1 / num2).to_s
    end
  end
end
