def repetitions(str1, str2)
	puts "**************************"
	puts "String 1 : #{str1}"
	puts "String 2 : #{str2}"

	temp = []
	temp2 = []
	counter = 0
	i = 0
	counter1 = 0
	str_count_index = []

	str1.each_with_index do |y, x|
		unless str1.length == temp2.length
			if str2[i] == y
				temp << y
				y = "[#{y}]"
				temp2 << y
				str_count_index << x
				i += 1
			else
				temp2 << y
			end

			if str2.length == temp.length
				temp = []
				str_count_index = []
				counter += 1
				i = 0
			end

			end
		end

	if str_count_index.length != str2.length
		str_count_index.each do |s|
			temp2[s] = "#{temp2[s].byteslice 1}"
		end
	end

puts "the matching characters are enclosed in []: #{temp2.join}"
puts "Correct output : #{counter}"
end



repetitions("AaBbDdCcDddabc", "abcd")
repetitions("ABCDdcbaabcd", "abcd")
repetitions("malaysian global innovation and creativity center (magic)", "magic")