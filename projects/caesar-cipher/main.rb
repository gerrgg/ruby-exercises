def caesar_cipher(string, shift)
# Create a range for lowercase and uppercase letters
lowercase_keys = ('a'..'z').to_a
uppercase_keys = ('A'..'Z').to_a

encrypted = string.each_char.map do |letter|
    if lowercase_keys.include?(letter)
    new_index = (lowercase_keys.index(letter) + shift) % lowercase_keys.length
    lowercase_keys[new_index]
    elsif uppercase_keys.include?(letter)
    new_index = (uppercase_keys.index(letter) + shift) % uppercase_keys.length
    uppercase_keys[new_index]
    else
    letter  # Return non-alphabetic characters unchanged
    end
end

p encrypted.join
end


caesar_cipher('What a string!', 5)
caesar_cipher('AI will power the world!', 10)
caesar_cipher('Magic is real and you cant tell me otherwise!', -20)