dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  somehash.each do |key, value|
    puts "#{key}"
  end
end
 
# Get area code based on given hash and key
def get_area_code(somehash, city)
  somehash.each do |key, value|
    return value if(key == city)
  end
end
 
# Execution flow
loop do
  puts "Do you want to lookup a city name based on an area code? (Y/N)"
  response = gets.chomp.downcase
  break if response != "y"
  puts "Which city do you want an area code for?"
  get_city_names(dial_book)
  puts "Enter your selection"
  city = gets.chomp
  if dial_book.include? city
    ac = get_area_code(dial_book, city)
    puts "The areacode for #{city} is #{ac}"
  else
    puts "You entered a city name that is not in the dictionary"
  end
end