class QuotesController < ApplicationController

	def index
		@quote = Quote.order("RANDOM()").first
	end

  	def create
  		@quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
  		redirect_to root_path
  	end

  	def show
  		@quote = Quote.find(params[:id])
  	end

	def destroy
		@quote = Quote.find(params[:id])
		@quote.destroy
		redirect_to root_path
	end

  	private

  	def about
  	end

  	def quote_params
  		params.require(:quote).permit(:quote, :author)
  	end
end
