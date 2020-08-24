class Api::V2::RestusersController < ApplicationController
  def index
    response = ReqResServices.get_all_users
    render json: response, status: 200
  end

  #GET /users/:id
  def show
    response = ReqResServices.get_user user_id: params[:user_id].to_i
    render json: response, status: 200
  end

  #POST /users
  def create
    response = ReqResServices.create_user name: params[:name], job: params[:job]
    render json: response, status: 200
  end

  # PUT /users/:id
  def update
    response = ReqResServices.create_user name: params[:name], job: params[:job]
    render json: response, status: 200
  end

  # DELETE /users/:id
  def destroy
  end
end
