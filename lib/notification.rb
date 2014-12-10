class Notification

  @title = "Github"

  def initialize(args)
    @message = args[:message]
    @subtitle = args[:subtitle]
  end
  
end