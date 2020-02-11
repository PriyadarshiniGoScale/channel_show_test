class ShowsController < ApplicationController
	def index
		@q = Show.ransack(params[:q])
		@shows = @q.result.includes(:channel)
	end
end
