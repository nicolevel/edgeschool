class MessagesController < ApplicationController
def contact
  @contact = Message.new(params[:message])
end

def index
end

def create
  @contact = Message.new(params[:message])
  @contact.request = request
  respond_to do |format|
    if @contact.deliver
      # re-initialize Home object for cleared form
      @contact = Message.new
      format.html { render 'index', :layout => false }
      format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
    else
      format.html { render 'shared/contact', :layout => false  }
      format.js   { flash.now[:error] = @message = "Message did not send." }
    end
    end
  end


end
