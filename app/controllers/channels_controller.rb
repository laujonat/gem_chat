class ChannelsController < ApplicationController
  def index
    @channel = Channel.new
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(channel_params)
    respond_to do |format|
      if @channel.save!
        format.json { status :created }
      else
        format.json { status :unprocessable_entity }
      end
    end 
  end

  def show
    @channel = Channel.find(params(:id))
    render json: @channel.messages
  end

  def destroy;end
end
