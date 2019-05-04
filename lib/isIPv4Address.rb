# An IP address is a numerical label assigned to each device (e.g., computer, printer) participating in a computer network that uses the Internet Protocol for communication. There are two versions of the Internet protocol, and thus two versions of addresses. One of them is the IPv4 address.
# Given a string, find out if it satisfies the IPv4 address naming rules.
# Example
#     For inputString = "172.16.254.1", the output should be
#     isIPv4Address(inputString) = true;
#     For inputString = "172.316.254.1", the output should be
#     isIPv4Address(inputString) = false.
#     316 is not in range [0, 255].
#     For inputString = ".254.255.0", the output should be
#     isIPv4Address(inputString) = false.
#     There is no first number.

def isIPv4Address(inputString)
  inputArray = inputString.split('.')
  inputArray.delete('')
  return false if !(inputArray.length == 4) || (inputString.count('.') != 3) || (/[^0-9\.]/).match?(inputString)
  inputArray.map(&:to_i).each { |nb| return false if nb < 0 || nb > 255 }

  return true
end



# Others' solutions

# def isIPv4Address(inputString)
#     n = inputString.split(".")
#     if n.length != 4 || n.any? {|x| x.to_i > 255 || !/\A\d+\z/.match(x)}
#         return false
#     end
#     return true
# end

# def isIPv4Address(inputString)
#  arr = inputString.split(".")
#   return false if arr.include?("") || arr.size != 4
#   for i in 0..arr.length - 1
#     return false if arr[i].count("a-zA-Z") > 0
#     return false if arr[i].to_i > 255 || arr[i].to_i < 0
#   end
#   true
# end

# def ip_validator(ip)
#   !!ip[/\A(\d{1,3}.){3}(\d{1,3})\z/] && ip.split('.').all? { |n| n.to_i.between?(0, 255) }
# end

# def ip_validator(ip)
#   ip.split('.').select { |n| n != '' && (0..255) === n.to_i }.length == 4
# end

# def ip_validator(ip)
#   /^(?:(?:^|\.)(?:2(?:5[0-5]|[0-4]\d)|1?\d?\d)){4}$/.match(ip) != nil
# end
