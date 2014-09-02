require 'open-uri'
require 'JSON'

url = "http://www.letsrevolutionizetesting.com/challenge"

while true do
  url = url.gsub("challenge", "challenge.json")
  json = JSON.parse(open(url).read)

  puts "RESPONSE: #{json}"

  url = json["follow"]
end