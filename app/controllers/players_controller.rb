class PlayersController < ApplicationController
	include PlayersHelper
	def index
		@players = Player.all
	end

	def show
		@player = Player.find(params[:id])
	end

	def new
		@player = Player.new

	end

	def create
		@player = Player.new(player_params)
		@player.save
		redirect_to player_path(@player)
	end

	def destroy
		@player = Player.find(params[:id])
		@player.destroy

		flash.notice = "Character #{@player.pname} Deleted!"

		redirect_to players_path(@players)
	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
		@player = Player.find(params[:id])
		@player.update(player_params)

		flash.notice = "Character '#{@player.pname}' Updated!"

		redirect_to player_path(@player)
	end
end
