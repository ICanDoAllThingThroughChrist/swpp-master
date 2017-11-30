class Task < ActiveRecord::Base
	has_many :orders
	has_many :comments, 	:through => :orders
	has_many :sites, 		:through => :orders
	has_many :clients, 		:through => :orders
	has_many :freqency,     :through => :orders
	has_many :users, 		:through => :orders
	has_many :uploads, 		:through => :orders
end 