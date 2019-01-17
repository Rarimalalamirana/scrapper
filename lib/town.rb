require 'nokogiri'
require 'open-uri'
require 'rubygems'
def get_townhall_email(url)
	   page = Nokogiri::HTML(open(url))
       page.xpath('//td').select do |mailto|
		p mailto.text if mailto.text.include?("@")
	end
end

get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")



def get_town_url
	ary =[]

	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
     
    news_links = page.css("a[class =lientxt]")
    news_links.each do|link|
    a  = link['href']
     puts "http://annuaire-des-mairies.com#{a.delete(".html")}.html"
 end
  
end
get_town_url
	

