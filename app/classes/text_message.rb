class TextMessage
  include ActiveModel::Model

  attr_accessor :recipient_phone_num, :message

  validates_presence_of :recipient_phone_num, :message

  def initialize( recipient_phone_num, message )
    @recipient_phone_num = recipient_phone_num
    @message = message
  end
  
  def send
    message_sent = spawn "curl http://textbelt.com/text \
                          -d number=#{self.recipient_phone_num} \
                          -d 'message=#{self.message}'"
  end

end