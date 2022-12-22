def caesar_cipher(str, shift)
    str_codes = str.codepoints
    array_lower = Array((65..90)).rotate!(shift)
    array_upper = Array((97..122)).rotate!(shift)
    str_codes.map! do |e|
      if e.between?(65,90)
        e = array_lower[e - 65].chr
      elsif e.between?(97,122)
         e = array_upper[e - 97].chr
      else 
        e.chr
      end
    end
    puts str_codes.join
  end
  
caesar_cipher("RUBY is Fun!", 5)