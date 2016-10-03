def convert_to_words (num)
  zero = {0 => 'zero'}
  unit = {1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine'}
  tens = {1 => 'eleven', 2 => 'twelve', 3 => 'three', 4 => 'fourteen', 5 => 'fifteen', 6 => 'sixten', 7 => 'seventeen', 8 => 'eighteen', 9 => 'nineteen'}
  multiples_tens = {1 => 'ten', 2 => 'twenty', 3 => 'thirty', 4 => 'forty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety'}

  conversion = ""

words = num
if words.is_a?(Integer)
 words
else
puts "this is not a valid number"
end

words = num
if words == 0
conversion << zero[words]
end

words = num
if words < 0
words = words * -1
return convert_to_words(words).insert(0, "negative ")
end

words = num / 1000000000
  remainder = num % 1000000000

  if words > 0
    conversion << convert_to_words(words) << " billion "
    num = remainder
  end

  
  words = num / 1000000
  remainder = num % 1000000

  if words > 0
    conversion << convert_to_words(words) << " million "
    num = remainder
  end

  
  words = num / 1000
  remainder = num % 1000

  if words > 0
    conversion << convert_to_words(words) << " thousand "
    num = remainder
  end


 
  words = num / 100
  remainder = num % 100

  if words > 0 && remainder == 0
    conversion << convert_to_words(words) << " hundred "
    num = remainder
 
  end

  #FOR HUNDREDS 
  words = num / 100
  remainder = num % 100

  if words > 0 
    conversion << convert_to_words(words) << " hundred and "
    num = remainder
 
  end


  #FOR TENS!!!
  words = num / 10
  remainder = num % 10

  if words > 0 
    if words == 1 && remainder > 0
      conversion << tens[remainder]
      remainder = 0
    else
      conversion << multiples_tens[words] << " "
    end
  end

  words = remainder

  #FOR ONES!!!!
  if words > 0 
    conversion << unit[words]

  end

  conversion

end

puts convert_to_words (-13458)