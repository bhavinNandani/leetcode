def roman_to_int(s)
  number = 0
  prev_value = 0
  roman_format = 
  {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
  }
  s.reverse.each_char do |char|
    if prev_value > roman_format[char.to_sym]
      number -= roman_format[char.to_sym]
    else
      number += roman_format[char.to_sym]
    end
    prev_value = roman_format[char.to_sym]
  end
  number
end

def roman_to_int_2(s)
  number = 0
  s_chars = s.chars
  (0..s_chars.length-1).each do |index|
    if index+1 < s_chars.length
      if (roman_format[s_chars[index].to_sym] < roman_format[s_chars[index+1].to_sym])
        number -= roman_format[s_chars[index].to_sym]
      else
        number += roman_format[s_chars[index].to_sym]  
      end
    else
      number += roman_format[s_chars[index].to_sym]
    end
  end
  number
end
p roman_to_int("III") # 3
p "============="
p roman_to_int("LVIII") # 58
p "============="
p roman_to_int("MCMXCIV") # 1994
