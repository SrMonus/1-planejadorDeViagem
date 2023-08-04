require 'sinatra'
require './lib/services/travel'

post '/plan' do
  response = Travel
    .new
    .with_dates(params[:start_date], params[:end_date])
    .from(params[:origin])
    .to(param[:destination])
    .plan!
  
  render json: response  
end