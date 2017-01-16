class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions ,through: :rides
  #validates_presence_of :name, :happiness, :nausea, :height, :tickets

  def mood
  	self.happiness > self.nausea ? "happy" : "sad" if self.happiness && self.nausea
  end
end
