class PromotionsController < ApplicationController

	def index

	 	response = RestClient.get "http://www.webappcamp.ws/api/v0/promotions"

	 	r = JSON.parse(response)

	 	@promotions = r['data']

		# @x = 10


	end

end