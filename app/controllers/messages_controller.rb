class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:contact, :index, :create]

def contact
  @contact = Message.new(params[:message])
end

def index
  @contact = Message.new(params[:message])
end

def create
  @contact = Message.new(params[:message])
  @contact.request = request
  @contact = Message.new(params[:message])
  if @contact.valid?
      flash[:notice] = "Message sent! Thank you for contacting us. We'll get back to you soon."
      redirect_to root_url
  else
      render :action => 'new'
    end
  end
end
