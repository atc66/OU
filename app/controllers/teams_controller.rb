class TeamsController < ApplicationController

	def index
		@team = Team.all
	
	end

	def show
		@team = Team.find(params[:id])
	end


private
	def team_d_params
    	params.require(:team_d).permit(:Rk, :Tm, :G, :PF, :TotTO, :FL, :TotPaYds, :PaTD, :Int, :Pa1stD, :PaYdsG, :TotRuYds, :RuYdsG, :RuTD, :Ru1stD, :FirstByPen, :Tot1stD)
  	end

	def team_o_params
    	params.require(:team_o).permit(:Rk, :Tm, :G, :PF, :TotTO, :FL, :TotPaYds, :PaTD, :Int, :Pa1stD, :PaYdsG, :TotRuYds, :RuYdsG, :RuTD, :Ru1stD, :FirstByPen, :Tot1stD)
  	end

  	def team_params
  		params.require(:team).permit(:Tm, :PF, :TotPaYds, :TotRuYds, :Tot1stD)
  	end

end