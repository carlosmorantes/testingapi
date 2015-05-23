class Api::CalculationController < ApplicationController
	skip_before_filter :verify_authenticity_token
	def index

	end
	def create
		#data = [{"consumption":2.3e-06,"date":"00:15"}]
		#render :json => { message: "You posted a message with consumption #{params[:data]} " }, :status => 200
		#render json: data

		a = Array.new
		num = params[:data].count
		i = 0
		while num > i
			a[i] = params[:data][i][:consumption]
			i += 1
		end

		
		render json: a
		
	end

		
	
end