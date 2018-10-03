class CharacterLogsController < ApplicationController

	def create
		@characterlog = CharacterLog.new(character_log_params)
		@characterlog.player_id = params[:player_id]
		@characterlog.save
		redirect_to player_path(@characterlog.player)
	end
	def character_log_params
	params.require(:character_log).permit(:dungeon_master, :events)
	end

end
