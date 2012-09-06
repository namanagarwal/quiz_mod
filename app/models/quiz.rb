class Quiz < ActiveRecord::Base
   
   attr_accessible :no_ques, :quiz_title

   has_many :questions 

   validates :quiz_title, :presence => true, :length => {:minimum => 5}
   validates_inclusion_of :no_ques, :in => 1..20,
				:message => "Sorry not allowed more than 20 Questions"
   

end

