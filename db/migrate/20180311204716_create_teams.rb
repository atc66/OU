class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
    	t.string :Tm
    	t.integer :PF
    	t.integer :TotPaYds
    	t.integer :TotRuYds
    	t.integer :Tot1stD
      t.timestamps
    end
  end
end
