from bs4 import BeautifulSoup
from urllib2 import urlopen
from time import sleep # be nice
import re

BASE_URL = 'http://www.autotrader.com'

def f7(seq): # de-duplication function
	seen = set()
	seen_add = seen.add
	return [ x for x in seq if x not in seen and not seen_add(x)]

def make_soup(url):
    return BeautifulSoup(urlopen(url).read(), "lxml")

def get_links(url):
	soup = make_soup(url)
	links = [BASE_URL + link['href'] for link in soup.find_all('a', href=re.compile('vehicledetails'))]
	return links

def get_details(url):
	soup = make_soup(url)
	table = soup.find('table', class_='vehicle-stats')
	atid = table.find('td',text='AT Car ID:').next_sibling.get_text()[:11]
	price = table.find('span', class_='primary-price').get_text()
	mileage = table.find('td',text='Mileage').next_sibling.get_text()
	body = table.find('td',text='Body Style').next_sibling.get_text()
	color = table.find('td',text='Exterior Color').next_sibling.get_text()
	drive = table.find('td',text='Drive Type').next_sibling.get_text()
	fuel = table.find('td',text='Fuel Type').next_sibling.get_text()
	doors = table.find('td',text='Doors').next_sibling.get_text()
	return {"atid": atid,
		"price": price,
		"mileage": mileage,
		"body": body,
		"color": color,
		"drive": drive,
		"fuel": fuel,
		"doors": doors}

if __name__ == '__main__':

	url = 'http://www.autotrader.com/cars-for-sale/searchresults.xhtml?zip=98103&Log=0&modelCode1=CTS&makeCode1=CAD&searchRadius=25&mmt=%5BCAD%5BCTS%5B%5D%5D%5B%5D%5D&showcaseListingId=353441599&showcaseOwnerId=100016026&captureSearch=true&showToolbar=true&Log=0'

	links = get_links(url)
	links = f7(links) # de-dupe
	print(len(links))
	for link in links:
		data = get_details(link)
		print data
		sleep(1) # be nice

