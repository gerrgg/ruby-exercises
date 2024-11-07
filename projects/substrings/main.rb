def substrings(word, dictionary)
  count = dictionary.reduce({}) do |result, dict_word|
    if word.include?(dict_word)
      result[dict_word] ||= 0 # init
      result[dict_word] += 1
    end
    result
  end
  p count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)