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
    sms_info = parse_form()
    puts "#{sms_info}" if sms_info
    sms_info = sms_info.try(:split, "|") || [ "7", "This is the default text message" ]
    send_SMS(sms_info[0], sms_info[1])
  end

  def parse_form
    if params[:phone] && params[:message]
      phone_num     = params[:phone]
      text_message  = params[:message]

      return phone_num + '|' + text_message
    end
  end

  def send_SMS(phone_num, text_message)
    message_sent = spawn "curl http://textbelt.com/text \
                          -d number=#{phone_num} \
                          -d 'message=#{text_message}'"
  end
end
