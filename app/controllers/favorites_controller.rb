class FavoritesController < ApplicationController
	before_action :check_user

	def create
		@show = Show.find_by(id: params[:show_id])
		favorite_show = current_user.favorite_user_shows.build(show_id: @show.id)
		unless favorite_show.save
			@alert = favorite_show.errors.full_messages.join(',')
		end
	end

	def destroy
		@show = Show.find_by(id: params[:id])
		favorite_show = current_user.favorite_user_shows.find_by(show_id: @show.id)
		unless favorite_show.destroy
			@alert = favorite_show.errors.full_messages.join(',')
		end
	end

	def check_user
	  return if user_signed_in?
	  redirect_to new_user_session_path, alert: 'You must log on to do favorite show.'
	end
end
