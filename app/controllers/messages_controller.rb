class MessagesController < ApplicationController
  respond_to :html, :js
  
  def index
    @messages = Message.all
  end

  def create
    @message = Message.new(params[:message])
    
    respond_to do |format|
      format.html {redirect_to :action => 'index', :notice => 'Not AJAX'}
      format.js
    end
    
  end
end