require 'net/http'
require 'uri'

class MainWindow

  include GladeGUI


  def initialize() #window1_show('args')
  #  @run = true
  #  while @run
    ping
  #  sleep 10
  end



  def close_pressed
    MainWindow.destroy
  end


  def ping
    begin
      url = URI.parse("http://www.stevenanton.io")
      start_time = Time.now
      response = Net::HTTP.get(url)
      end_time = Time.now - start_time



      if response==""
        @status_image = "bin/no_connection.png"
      else
        @status_image = "bin/good_connection.png"
      end

      @close_image = "bin/Button-Close-icon.png"

    rescue StandardError
      @status_image = "bin/no_connection.png"
    end
  end

end
