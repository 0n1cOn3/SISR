import shodan

SHODAN_API_KEY = "****************************"

api = shodan.Shodan(SHODAN_API_KEY)

try:

	# Seach Shodan
	results = api.search('apache')

	# Show the result
	for result in results['matches']:
		print '%s' % result['ip_str']
except shodan.APIError, e:
	print 'Error: %s' % e
