require 'sinatra'
require 'json'
require 'nokogiri'
require 'open-uri'

def download_url(url)
	return open(url).read
end

def parse_html(html)
	return Nokogiri::HTML(html)
end

get '/' do
  erb :index, locals: { params: request.params }
end

get '/url' do
	url = request.params['url']
	html = download_url(url)
	doc = parse_html(html)

	doc.css('a').map{ |link|
		link['href']
	}.join("<br>")	
end

get '/bars' do
	url = "http://raw.githubusercontent.com/jakecrump/design/master/happyhour/data.json"
	data = JSON.parse( download_url(url) )
	erb :bars, locals: { bars: data['bars'] }	
end