module PlayersHelper
	def player_params
		params.require(:player).permit(:pname, :pclass)
	end
	
end
