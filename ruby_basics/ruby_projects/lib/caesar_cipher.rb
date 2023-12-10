



class CaesarCipher


  def translate(message, shift, result = '')


    cypher_index = ('a'..'z').to_a
    cypher_caps = cypher_index.map { |a| a.upcase  }
    encrypted_array = []
    string_array = message.split('')
    message.each_char do  |a|
      if cypher_index.include?(a)
        new_index = (cypher_index.find_index(a) + shift) % cypher_index.length
        newchar = cypher_index[new_index]
      elsif cypher_caps.include?(a)
        new_index = (cypher_caps.find_index(a) + shift) % cypher_caps.length
        newchar = cypher_caps[new_index]
      else
        newchar = a
      end
      encrypted_array.push(newchar)
    end
    return encrypted_array.join
  end

  def grab_input()
    puts "What is the string to shuffle"
    string_to_shuffle = gets.chomp
    puts "Great! we'll shuffle that string. \n What's the shift you want to make?"
    shift_num = gets.chomp.to_i

    return string_to_shuffle,shift_num
  end

end



cipher = CaesarCipher.new

message, shift = cipher.grab_input

p "The shuffled message is #{cipher.translate(message, shift)}"
