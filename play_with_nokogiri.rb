require 'open-uri'
require 'nokogiri'

def download_url(url)
	return open(url).read
end

def parse_html(html)
	return Nokogiri::HTML(html)
end

url = "http://dailyemerald.com"
html = download_url(url)
doc = parse_html(html)

doc.css('a').each do |link|
	puts "#{link['href']}\t#{link.text}"
end