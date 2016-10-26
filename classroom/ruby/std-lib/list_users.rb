# http://jsonplaceholder.typicode.com/users

require "json"
require "net/http"

uri = URI("http://jsonplaceholder.typicode.com/users")
json_str = Net::HTTP.get(uri)
json = JSON.parse(json_str)
p json.map{|user| user["name"]}
