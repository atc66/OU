class TeamDsController < ApplicationController
	def index
		@teamds = TeamD.all
	end

	def show
		@teamd = TeamD.find(params[:id])
	end


	private
	def team_s_params
    	params.require(:team_d).permit(:Rk, :Tm, :G, :PF, :TotTO, :FL, :TotPaYds, :PaTD, :Int, :Pa1stD, :PaYdsG, :TotRuYds, :RuYdsG, :RuTD, :Ru1stD, :FirstByPen, :Tot1stD)
  	end



end
