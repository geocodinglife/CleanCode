
require 'open-uri'

print "Enter a website domain you lik (without the http://):"
website = gets.chomp

begin
  file = open("http://#{website}")
  contents = file.read
  unless contents.index("<h1>").nil?
    header_start = contests.index("<h1>") + 4
    header_end = contents.index("</h1>") - 1
    p contents[header_start..header_end]
  else
    p "There were no h1 tags on #{website}."
  end
rescue
  puts "You type in something wrong. Please try again"
end
