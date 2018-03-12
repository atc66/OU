class TeamsController < ApplicationController

	def index
		@teamds = TeamD.all
		@teamos = TeamO.all
	end

	def show
		@teamd = TeamD.find(params[:id])
	end


private
	def team_d_params
    	params.require(:team_d).permit(:Rk, :Tm, :G, :PF, :TotTO, :FL, :TotPaYds, :PaTD, :Int, :Pa1stD, :PaYdsG, :TotRuYds, :RuYdsG, :RuTD, :Ru1stD, :FirstByPen, :Tot1stD)
  	end

	def team_o_params
    	params.require(:team_o).permit(:Rk, :Tm, :G, :PF, :TotTO, :FL, :TotPaYds, :PaTD, :Int, :Pa1stD, :PaYdsG, :TotRuYds, :RuYdsG, :RuTD, :Ru1stD, :FirstByPen, :Tot1stD)
  	end

end