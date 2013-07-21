class Trio < ActiveRecord::Base
	attr_accessor   :nom , :retour
def initialize(blaze = 12 , retour=[])
	@nom = blaze
	retour << ["sss", "456","ee"]
	@retour = retour
end
def cnom
     12
end 



  end 


  
