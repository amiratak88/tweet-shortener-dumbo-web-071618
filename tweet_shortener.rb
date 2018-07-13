def dictionary
  {
    'hello' => 'hi',
    'to' => '2', 
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => "@", 
    'and' => "&"
  }
end 

def word_substituter(string)

  key_array = dictionary.keys
  new_string = [] 
  
  string.split(' ').each do |word|
    if key_array.include?(word.downcase) == true
      new_string << dictionary[word]
    else 
      new_string << word
    end
  end
  new_string.join(" ")
end


def bulk_tweet_shortener(array)
  array.each do |string|
    string =  word_substituter(string)
  end
end