require 'pry'
class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    get '/' do
        rider = Rider.all
        rider.to_json
    end
    get '/riders' do
        rider = Rider.all
        rider.to_json
    end
    get '/orders' do
        order = Order.all
        order.to_json
    end
    get '/teams' do
        team = Team.all
        team.to_json
    end
    get '/riders/:id' do
        rider = Rider.find(params[:id])
        rider.to_json
    end
    get '/orders/:id' do
        order = Order.find(params[:id])
        order.to_json
    end
    get '/teams/:id' do
        team = Team.find(params[:id])
        team.to_json
    end
    post '/riders' do
        rider = Rider.create(name: params[:name],id_no: params[:id_no], nationality: params[:nationality], phone_number: params[:phone_number], plate_number: params[:plate_number] )
        rider.to_json

        # if Rider.find_by(id_no:params[:id_no])
        #     halt 400, 'Id Number already exists'
        # end
    end
    post '/orders' do
        order = Order.create(name_of_order: params[:name_of_order],time_of_order: params[:time_of_order], delivery_time_in_minutes: params[:delivery_time_in_minutes], rider_id: params[:rider_id], team_id: params[:team_id] )
        order.to_json
    end
    post '/teams' do
        team = Team.create(name: params[:name],location: params[:location])
        team.to_json
    end
    delete '/riders/:id' do
        rider = Rider.find(params[:id])
        rider.destroy
        rider.to_json
    end
    delete '/orders/:id' do
        order = Order.find(params[:id])
        order.destroy
        order.to_json
    end
    delete '/teams/:id' do
        team = Team.find(params[:id])
        team.destroy
        team.to_json
    end

end