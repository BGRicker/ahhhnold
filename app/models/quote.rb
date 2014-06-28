class Quote < ActiveRecord::Base
	validates :quote, :presence => true, :length  => { :maximum => 140, :minimum => 10 }
	validates :author, :presence => true, :length  => { :maximum => 50, :minimum => 5 }
	validates :quote, uniqueness: true
end
