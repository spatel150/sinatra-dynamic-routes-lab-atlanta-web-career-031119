require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @names = params[:name]
    @names.reverse
  end 

  get '/square/:number' do
    @number = params[:number].to_i
    (@number ** 2).to_s
  end 

  get '/say/:number/:phrase' do
    @answer = ' '
    params[:number].to_i.times do
      @answer += params[:phrase]
    end 
    @answer 
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @sentence
  end 

  get '/:operation/:number1/:number2' do
    @math = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @math == "add"
      operate = (@number1 + @number2)
    elsif @math == "subtract"
      operate = (@number1 - @number2)
    elsif @math == "multiply"
      operate = (@number1 * @number2)
    elsif @math == "divide"
      operate = (@number1 / @number2)
    else 
      operate = "Cannot do operation" 
    end 
    operate.to_s
    end  
  end 