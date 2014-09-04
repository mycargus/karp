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
    if params[:phone]
      if params[:message]
        puts 'phone message works'
        spawn 'curl http://textbelt.com/text \
              -d number=8014002078 \
              -d "message=I sent this message for free with textbelt.com"'
      end
    end
  end

end
