require_relative 'config/environment'

class App < Sinatra::Base

	get "/" do
		erb :user_input
	end

	post "/PigLatinize" do
		if params[:text] == ""
			erb :four_o_four
		else
			@english = params[:text]
			@piglatin = PigLatinizer.new(@english).text
			erb :pig_latin
		end
	end
end