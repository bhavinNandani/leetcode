# @param {Integer} x
# @return {Boolean}
def _is_palindrome(x)
    return false if x < 0
    if x.to_s.chars ==  x.to_s.chars.reverse # x.digits == x.digits.reverse
        return true
    end
    false
end

def is_palindrome(x)
    return false if x < 0
    original_number = x
    reversed = 0

    while x > 0
        digit = x%10
        reversed = reversed * 10 + digit
        x = x/10
    end
    original_number == reversed
end
