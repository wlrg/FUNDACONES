
#puts "ingrese el cuerpo de la publicación"
#Post = gets.chomp
require 'faraday'


client = Faraday.new(url:'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
    config.token_auth('52988ddfd82340ebedf530d0ee3d13f7')

end

#response = client.post do |req|
#   req.url '/api/v1/posts'
#   req.headers['Content-Type']='application/json'
#   req.body = '{"post":{"body": "'+Post+'"}}'
# end

 puts "ingrese el id de la publicacióna eliminar"
 Id = gets.chomp
 response = client.delete do |req|
    req.url '/api/v1/posts/'+Id
    req.headers['Content-Type']='application/json'
 end

#name = gets.chomp

#response = client.post do |req|

#    req.url '/api/v1/users'
#   req.headers['Content-Type']='application/json'
#    req.body = '{"user":{"name": "'+name+'"}}'
#end


require 'oj'

puts Oj.load(response.body)
puts response.status

#b342b75856c7e13a09a88b6990344a4f

