class PigLatinizer

	attr_accessor :text

	def initialize(text)
		@text = parseString(text)
	end

	def pigLatinize(word)
		if word[0].split(/[aeiou]/) == []
			word + "way"
		else
			first = word.split(/[aeiou]/)[0]
			pig = word[first.length...word.length]
			pig + first + "ay"
		end
	end

	def parseString(text)
		text.split(" ").map{|word| pigLatinize(word)}.join(" ")
	end
end