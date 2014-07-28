class PromotionsController < ApplicationController

	def index

		# raise params.inspect

	 	response = RestClient.get "http://www.webappcamp.ws/api/v0/promotions"

	 	r = JSON.parse(response)

	 	@promotions = r['data']

		# @x = 10


	end

	def show

		# raise params['id']

		id = params['id']

		response = RestClient.get "http://www.webappcamp.ws/api/v0/promotions/" + id

	 	r = JSON.parse(response)

		@promotion = r['data']






	end

end