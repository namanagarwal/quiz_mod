class Question < ActiveRecord::Base
  
  attr_accessible :cor_opt, :opt_1, :opt_2, :opt_3, :opt_4, :ques_title
  
  belongs_to :quiz

  validates :ques_title, :presence => true, :length => {:minimum => 10}
  validates :opt_1,:opt_2,:opt_3,:opt_4, :presence => true, :length => {:minimum => 1}
  validates_uniqueness_of :opt_1
  validates_uniqueness_of :opt_2				
  validates_uniqueness_of :opt_3
  validates_uniqueness_of :opt_4
  validates_presence_of :cor_opt



end
