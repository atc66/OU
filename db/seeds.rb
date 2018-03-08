require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'NFL2017Defense.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  puts row.to_hash
  t = TeamD.new
  t.Rk = row['Rk']
  t.Tm = row['Tm']
  t.G = row['G']
  t.PF = row['PF']
  t.TotTO = row['TotTO']
  t.FL = row['FL']
  t.TotPaYds = row['TotPaYds']
  t.PaTD = row['PaTD']
  t.Int = row['Int']
  t.Pa1stD = row['Pa1stD']
  t.PaYdsG = row['PaYdsG']
  t.TotRuYds = row['TotRuYds']
  t.RuYdsG = row['RuYdsG']
  t.RuTD = row['RuTD']
  t.Ru1stD = row['Ru1stD']
  t.FirstByPen = row['FirstByPen']
  t.Tot1stD = row['Tot1stD']
  t.save
  puts "#{t.Tm} saved"
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'NFL2017Offense.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
puts row.to_hash
    t = TeamO.new
  t.Rk = row['Rk']
  t.Tm = row['Tm']
  t.G = row['G']
  t.PF = row['PF']
  t.TotTO = row['TotTO']
  t.FL = row['FL']
  t.TotPaYds = row['TotPaYds']
  t.PaTD = row['PaTD']
  t.Int = row['Int']
  t.Pa1stD = row['Pa1stD']
  t.PaYdsG = row['PaYdsG']
  t.TotRuYds = row['TotRuYds']
  t.RuYdsG = row['RuYdsG']
  t.RuTD = row['RuTD']
  t.Ru1stD = row['Ru1stD']
  t.FirstByPen = row['FirstByPen']
  t.Tot1stD = row['Tot1stD']
  t.save
  puts "#{t.Tm} saved"
end

