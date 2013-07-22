require 'spec_helper'
require 'trio'

describe 'Trio' do 

render_views
	 
  	it "A un nom" do
  	 Regional.new("Un nom").should respond_to :station
  	
  	end  
	it "Doit valoir 10" do
	Regional.new("keke").station.should be_eql(5)
	end

	it "Retourne la longitude" do
	Regional.new("la Long tt").lgt.should be_eql("45")
	end

	it "Retourne la latitude" do
	Regional.new("la Lat tt").lat.should be_eql("47")
	end


end
