#!/usr/bin/ruby

require 'rubygems'
gem 'nokogiri'
require 'nokogiri'

doc = Nokogiri::XML(File.open(ARGV[0]))

output = File.open(ARGV[0] + ".csv", "w")
output.write( "\"GYARTMANY_NEV\";\"GYARTMANY_KOD\";\"TIPUS_NEV\";\"TIPUS_KOD\";\"FAJTA_NEV\";\"FAJTA_KOD\"\n")
gyLista = doc.css("GyLista")

gyLista.each do |gyartmany|
	gyartmanyNev = gyartmany.css("Gyartmany Nev")
	gyartmanyKod = gyartmanyNev.first().attributes['Kod']
	
	tipusok = gyartmany.css("Tipus")
	tipusok.each do |tipus|
		tipusNev = tipus.css("Nev")
		tNev = tipusNev.first().content()
		tKod = tipusNev.first().attributes['Kod']
		
		fajtak = tipus.css("Fajta")
		fajtak.each do |fajta|
			fKod = fajta.attributes['Kod']
			fNev = fajta.content()

			output.write( "\"" + gyartmanyNev.first().content() + "\";\"" + gyartmanyKod +
				      "\";\"" + tNev + "\";\"" + tKod + "\";\"" + fNev + "\";\"" + fKod + "\"\n")
		end
	end
end

output.close
