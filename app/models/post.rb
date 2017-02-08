require "html_truncator"

class Post < ApplicationRecord
	validates :title, :body, :presence => true


	def excerpt	
		puts HTML_Truncator.truncate(self.body.to_s.html_safe, 100)
	end
end