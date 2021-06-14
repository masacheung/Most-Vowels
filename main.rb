def most_vowels(sentence)
	count = {}
  	
  	sentence.split.each do |word|
      count[word] = vowels_count(word)
    end
  	
  sorted = count.sort_by {|k, v| v}
  return sorted[-1][0]
  	
end

def vowels_count(ele)
  num = 0
  vowels = "aeiou"
  ele.each_char do |ele|
    if vowels.include?(ele)
      num += 1
    end
  end
  return num
end

print most_vowels("what a wonderful life") #=> "wonderful"