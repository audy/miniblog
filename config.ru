require 'sinatra'
set :markdown, :layout_engine => :erb, :layout => :layout
get('/') { erb :home }
get('/post/:name') { markdown File.read("views/post/#{params[:name]}.md") }
run Sinatra::Application