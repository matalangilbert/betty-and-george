class MessagesController < ApplicationController
  respond_to :html, :js
  
  def index
    @messages = Message.order('created_at DESC').page(params[:page])
    
    respond_to do |format|
      format.js
      format.html # index.html.erb
    end
  end
  
  def create
    @message = Message.create!(params[:message])
    @messages = Message.last(12).reverse
    
    respond_to do |format|
      format.js { render :nothing => true}
    end    
  end
  
  def retrieve
    @color = params[:color]
    created_at = DateTime.parse(params[:created_at][0..-3]) + 1.seconds
    @messages = Message.where("created_at > ? ", created_at).order("created_at DESC")
  end
end