class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :user
  belongs_to :attraction

  def take_ride
      if self.user.tickets >= self.attraction.tickets && self.user.height >= self.attraction.min_height 
        self.user.tickets -=self.attraction.tickets
        self.user.nausea += self.attraction.nausea_rating
        self.user.happiness += self.attraction.happiness_rating
        self.user.update( :happiness => self.user.happiness, :nausea => self.user.nausea, :tickets => self.user.tickets  )
        "Thanks for riding the #{self.attraction.name}!"
      elsif self.user.tickets < self.attraction.tickets && self.user.height < self.attraction.min_height 
        "Sorry. You do not have enough tickets the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
  	  elsif self.user.tickets < self.attraction.tickets 
  	  	"Sorry. You do not have enough tickets the #{attraction.name}."
  	  elsif self.user.height < self.attraction.min_height
  	  	"Sorry. You are not tall enough to ride the #{attraction.name}."
  	  else

  	  end		
  	  			
  end
end
