class ScratchersController < ApplicationController

    def index
      scratchers = Scratcher.all
      render json: scratchers.to_json
    end
  
    def show
      scratcher = Scratcher.find(params[:id])
      render json: scratcher.to_json
    end
  
    def create
      scratcher = Scratcher.create(item_name: params["item_name"], item_description: params["item_description"], item_size: params["item_size"], item_cost: params["item_cost"])
      render json: scratcher.to_json
    end
  
    def update
      scratcher = Scratcher.find(params[:id])
      scratcher.update(item_name: params["item_name"], item_description: params["item_description"], item_size: params["item_size"], item_cost: params["item_cost"])
      scratcher.save
      render json: scratcher
    end
  
    def destroy
      scratcher = Scratcher.find(params[:id])
      scratcher.destroy
      render json: scratcher
    end
  
  end
  

