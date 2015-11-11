class PagesController < ApplicationController
  def parameter_page 
    @parameters = params[:readthis]
  end
  def numberguess
    @switch = params[:generate]
    if @switch == "1"
      Randomnumber.first.update(number: rand(50))
    end
    @number_number = Randomnumber.first.number
    @guess = params[:number].to_i
    

    
  end

end
