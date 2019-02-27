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
  respond_to do |format|
    if @contact.deliver
      # re-initialize Home object for cleared form
      @contact = Message.new
      format.html { render 'messages/index', :layout => false }
      format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
    else
      format.html { render 'pages/contact', :layout => false  }
      format.js   { flash.now[:error] = @message = "Message did not send." }
    end
    end
  end


end