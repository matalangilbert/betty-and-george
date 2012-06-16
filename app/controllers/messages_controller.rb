class MessagesController < ApplicationController
  respond_to :html, :js
  
  def index
    @messages = Message.last(12).reverse
  end
  
  def create
    @message = Message.create!(params[:message])
    @messages = Message.last(12).reverse
  end
  
  def retrieve
    logger.debug "HERE"
    @messages = Message.last(12).reverse
  end
end