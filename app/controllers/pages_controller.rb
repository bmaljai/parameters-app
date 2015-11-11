class PagesController < ApplicationController
  def parameter_page 
    @parameters = params[:readthis]
  end
  def numberguess
    @switch = params[:switch]
    if @switch == "1"
      Randomnumber.first.update(number: rand(50))
      
    end

    @number_number = Randomnumber.first.number
    @guess = params[:guess].to_i
    

    
  end

end
