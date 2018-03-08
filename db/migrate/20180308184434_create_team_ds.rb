class CreateTeamDs < ActiveRecord::Migration[5.1]
  def change
    create_table :team_ds do |t|
      t.integer :Rk
      t.string :Tm
      t.integer :G
      t.integer :PF
      t.integer :TotTO
      t.integer :FL
      t.integer :TotPaYds
      t.integer :PaTD
      t.integer :Int
      t.integer :Pa1stD
      t.integer :PaYdsG
      t.integer :TotRuYds
      t.integer :RuYdsG
      t.integer :RuTD
      t.integer :Ru1stD
      t.integer :FirstByPen
      t.integer :Tot1stD

      t.timestamps
    end
  end
end
