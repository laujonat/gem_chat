class ServersController < ApplicationController
  def index
    @server = Server.new
  end

  def new
    @server = Server.new
  end

  def create
    @server = Server.new(server_params)
  end

  def show
    @server = Server.find(params[:id])
    render json: @server.channels
  end

  private 

  def chatroom_params
    params.require(:server).permit(:name)
  end
end
