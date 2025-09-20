require "net/http"
require "json"

url = URI("http://api.open-notify.org/iss-now.json")
request = Net::HTTP.get(url)
iss_hash = JSON.parse(request)
iss_pos = iss_hash["iss_position"]
longitude = iss_pos["longitude"]
latitude = iss_pos["latitude"]
lat_long = "#{latitude},#{longitude}"
map_url = "https://maps.google.com/?q=#{lat_long}&ll=#{lat_long}&z=1"
system("start \"\" \"#{map_url}\"")