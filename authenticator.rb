@users = [
  { username: "pparker", password: "spider-man" },
  { username: "tstark", password: "ironman" },
  { username: "cdanvers", password: "marvel" },
  { username: "hpym", password: "wasp"}
]

def item_found(item)
  @users.each do |i|
    return true if i.has_value? item
  end
  false
end

puts "Welcome to the Authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"
i = 0
while i < 3 do
  print "Username: "
  uname = gets.chomp
  print "Password: "
  pw = gets.chomp
   
  if ( item_found(uname) && item_found(pw))
    puts @users.select {|username| username[:username] == uname }
  else
    puts "Credentials were not correct"
  end
  puts "Press n to quit or any other key to continue"
  selection = gets.chomp.downcase
  i += 1
  if (selection == "n")
    break
  else
    next
  end
end
puts "You have exceeded the number of attempts" if i == 3
