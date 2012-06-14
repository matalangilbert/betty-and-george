class MessagesController < ApplicationController
  respond_to :html, :js
  
  def index
    @messages = Message.last(10)
  end
  
  def create
    @message = Message.create!(params[:message])
    @messages = Message.last(10)
  end
  
  def retrieve
    logger.debug "HERE"
    @messages = Message.last(10)
  end
end