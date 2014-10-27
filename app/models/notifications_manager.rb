# encoding: utf-8

class NotificationsManager


  # PUBNUB
  def self.send_notification channel, message
    Thread.new{
      PUBNUB.publish({
        'channel' => channel,
        'message' => message,
        'callback' => lambda do |message|
          puts(message)
        end
      })
    }
  end



  private



end