class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def send_text
    send_text_message()
  end

  def send_text_message
    if params[:phone] && params[:message]
      text_message = TextMessage.new( params[:phone], params[:message] )
      text_message.send
    end
  end

end
