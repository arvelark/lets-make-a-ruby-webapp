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

stories = []

doc.css('a').each do |link|
	if link['href'].include?('/2014/')
		stories << link['href']
	end
end

stories.each do |href|
	puts "---"
	puts "Downloading #{href}:"
	doc = parse_html(download_url(href))
	puts doc.css('p').map{|p| p.text }.inspect
end