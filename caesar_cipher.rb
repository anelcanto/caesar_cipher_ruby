def caesar_cipher(phrase, n)
  phrase.each_char do |l|
    # Only cipher letters 
    unless(l =~ /[a-zA-Z]/)
      print l
      next
    end
    x = l.unpack('C')[0]
    # Get keys for upper & lowercases
    key = 64
    key = 96 if x>90
    x_2 = x- key
    # Apply caeser formula
    e = (x_2+n) % 26
    enc = [e + key].pack('C');
    print enc    
  end
end

caesar_cipher('What a string!', 5)
puts "\n\n"