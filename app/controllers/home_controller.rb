class HomeController <ApplicationController
  def index
     right_now= Time.new 
    @current_time = right_now.to_formatted_s(:long)
    @greet_message = case right_now.hour 
      when 1..11
       "Good Morning, Sonja!" 
        
      when 12..15
       "Good Afternoon, Sonja!"
          
      when 16..19
       "Good Evening, Sonja!"
    
      when 20..24
       "Good Night, Sonja!"      
  end

    @quote= Quote.all.sample.quip

  
  end
end


