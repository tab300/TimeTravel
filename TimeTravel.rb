require 'date'

module DayPredictor
  
  class FindDate
    # Method to initialize the day-calculating class, allowing any number of days to be passed into it.
    def initialize (days_from_today)
      @n = days_from_today[:days]
    end
    
    # The method that does the calculation for which day of the week 
    def new_day
      Date.today.next_day(n = @n).wday 
    end
    
    # The method that uses conditional statements to assign actual name to the day of the week
    def day_of_the_week
      if new_day == 0
        "Sunday"
      elsif new_day == 1
        "Monday"
      elsif new_day == 2
        "Tuesday"
      elsif new_day == 3
        "Wednesday"
      elsif new_day == 4
        "Thursday"
      elsif new_day == 5
        "Friday"
      else
        "Saturday"
      end
    end
    
    # The method to calculate the year the calculation in question would fall in
    def calculated_year
      (Date.today) + (@n.to_i)
    end
    
  end

end

# Testing the results by instantiating the module::class and putting them in a string

# To count into the past, the value of the [:days] key would be negative and thus prepended with a ( - ) sign

 d_day = DayPredictor::FindDate.new(:days => 7000)  
# 
puts "The day of the week would be #{d_day.day_of_the_week.upcase} and the date would be #{d_day.calculated_year}."
