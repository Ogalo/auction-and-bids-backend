class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/users" do
    users = User.all
    users.to_json
  end

  post '/users' do
    user = User.create(email: params[:email], password: params[:password],confirm_password: params[:confirm_password] )
    user.to_json
  end

  # .order(:title).limit(10)

  get "/bids" do
    bids = Bid.all.order(:your_bid).limit(5)
    bids.to_json
  end
  # Bid.create(name: 'Harry', id_no: 32525, item_name: 'mercedes', item_id: 123, your_bid: 12000 )

  post '/bids' do
    bid = Bid.create(name: params[:name], id_no: params[:id_no],item_name: params[:item_name],item_id: params[:item_id],your_bid: params[:your_bid] )
    user.to_json
  end

  patch '/bids/:id' do
    bid = Bid.all.find(params[:id])
    bid.update(your_bid: params[:your_bid])
    bid.to_json
  end



end
