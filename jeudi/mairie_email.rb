require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rest-client'

page_mairie_vaureal = 'http://annuaire-des-mairies.com/95/vaureal.html'
page_annuaire_des_mairies = 'http://annuaire-des-mairies.com/'
page_communes_val_oise = 'http://annuaire-des-mairies.com/val-d-oise.html'

def get_the_email_from_its_webpage(page)
	mail = ''
		doc = Nokogiri::HTML(open(page))
			doc.css('td').each do |node|
		mail = node.text if node.text.include?'@'
		end
	puts mail
end

def get_all_the_urls_of_val_doise_townhalls(page, acceuil)
	@list_url = []
		doc = Nokogiri::HTML(open(page))
			doc.xpath('//a[@class = "lientxt"]').each do |node|
				if node.values[1][0].include?('.')
				@list_url  << acceuil + node.values[1][2..-1] 
			end
		end
	puts @list_url
end 


def list_email(bla)
	the_list = []
		bla.each do |url|
		the_list << get_the_email_from_its_webpage(url)
		end
	the_list
end

########### REPONSE ################
get_the_email_from_its_webpage(page_mairie_vaureal)
get_all_the_urls_of_val_doise_townhalls(page_communes_val_oise, page_annuaire_des_mairies)
list_email(@list_url)

# list_url.each do |url|
# arr << url.request.path.split('95/').last
# puts arr
#def get_the_emails_of_list_url ()