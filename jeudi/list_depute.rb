require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rest-client'

@web_page = 'http://www2.assemblee-nationale.fr/deputes/liste/tableau'
@web_page2 = 'http://www2.assemblee-nationale.fr'


def get_all_name_depute_page(page)
	@list_name = []
		doc = Nokogiri::HTML(open(page))
			doc.xpath('//td//a').each do |node|
		@list_name  <<  node.text
		end
	@list_name
end 

def separer_nom_prenom(fullname)
	@first_name =[]
	@last_name = []
	fullname.each do |noms|
		@first_name << noms.split[1]
		@last_name << noms.split.last
	end
end

def get_url_page(page, page_accueil)
	@liste_url = []
		doc = Nokogiri::HTML(open(page))
			doc.xpath('//td//a[@href]').each do |node|
			@liste_url << page_accueil + node.values[0]
		end
	@liste_url
end

def get_contact_from_url(liste)
	@liste_url_contact = []
			doc = Nokogiri::HTML(open(liste))
				doc.xpath('//li//a').each do |node|
				if node.values[0].include?('mailto:')
				@liste_url_contact << node.values[0][7..-1] 
				end
			end
	@liste_url_contact
end


def total_mail(liste_url)
	@liste_de_la_mort = []
		liste_url.each do |murl|
		@liste_de_la_mort << get_contact_from_url(murl)
		end
	@liste_de_la_mort
end

def tableau(a, b, c)
	p last_hash = Hash[a.zip b.zip c]
end


get_all_name_depute_page(@web_page)
get_url_page(@web_page, @web_page2)
total_mail(@liste_url)
separer_nom_prenom(@list_name)
p tableau(@first_name, @last_name, @liste_de_la_mort)

