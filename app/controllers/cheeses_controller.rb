class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end
  
 def show
      #find cheese using ID in url
       cheese = Cheese.find_by(id: params[:id])
      #send json response using cheese object
      render json: cheese
     
    end
end
