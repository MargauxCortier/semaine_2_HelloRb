require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rest-client'

def cour_money_coin_market(page)
	@cour = []
	doc = Nokogiri::HTML(open(page))
	doc.xpath('//a[@class = "price"]').each do |node|
		@cour << node.text 
	end
	@cour
end

def name_coin(page)
	@list = []
	doc = Nokogiri::HTML(open(page))
	doc.xpath('//a[@class = "currency-name-container link-secondary"]').each do |node|
		@list << node.text
	end
	@list
end

def cours_name_value(nlme, price)
	hash_propre = Hash[nlme.zip price]
	p hash_propre
end

coinmarket = "https://coinmarketcap.com/all/views/all/"

p cour_money_coin_market(coinmarket)
p name_coin(coinmarket) 
p cours_name_value(@list, @cour)