# method to takea word as a first argument, valud array of substinrgs, and then return listing of all times they were in an array

def substrings(string,dictionary)
  result = Hash.new(0)
  lowercase_string = string.downcase
  dictionary.reduce(Hash.new(0)) do |counts, word|
    result_to_save = lowercase_string.scan(word).length
    result[word] = result_to_save if result_to_save > 0
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?",dictionary)
