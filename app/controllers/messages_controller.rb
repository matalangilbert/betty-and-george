class MessagesController < ApplicationController
  respond_to :html, :js
  
  def index
    @messages = Message.all
  end

  def create
    @message = Message.create!(params[:message])
  end
end