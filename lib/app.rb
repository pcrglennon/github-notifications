require './lib/environment'

class App

  def initialize
    @client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])
  end

  def run
    notifications = @client.notifications.map do |n|
      Notification.new message: n[:subject][:url], subtitle: n[:subject][:title] 
    end

    binding.pry
  end
end

App.new.run
