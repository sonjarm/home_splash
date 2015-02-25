class HomeController < ApplicationController
  def index
     right_now= Time.now.strftime("%a, %b %d %Y %I:%M %p") 
    @current_time = right_now
    @greet_message = case right_now 
    when 5..11
      "Good Morning!"
    when 12..15
      "Good Afternoon!"
    when 16..19
      "Good Evening!"
    when 20..23, 0..4
      "Good Night!"
    end
  end
end


