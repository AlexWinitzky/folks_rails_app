class QuotesController < ApplicationController

  def show
    @peep = Peep.find(params[:peep_id])
    @quote = @peep.quotes.show(quote_params)
  end

  def create
    @quote = Quote.new(quote_params[:peep_id])
  end
  
  def new
    @peep = Peep.find(params[:peep_id])
    @quote = @peep.quotes.new(body: Faker::Seinfeld.quote)
  end

  private
  def quote_params
    params.require(:quote).permit(:body)
  end
end
