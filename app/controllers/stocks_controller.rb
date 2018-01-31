class StocksController < ApplicationController
    
    def search
        if params[:stock].present?
            @stock = Stock.new_from_lookup(params[:stock])
            if @stock
                render partial: 'users/result'
            else
                flash.now[:danger] = "You have entered an incorrect Stock"
                render partial: 'users/result'
            end
        else
           flash.now[:danger] = "Error! Search cannot be empty."
           render partial: 'users/result'
        end
    end
    
end