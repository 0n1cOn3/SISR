import sys,os
import shodan

if len(sys.argv)!=3:
	print('Wrong Usage')
if sys.argv[1].lower()=='search':
	SHODAN_API_KEY = "SHODAN_API_KEY_GOES_HERE"
	api = shodan.Shodan(SHODAN_API_KEY)
	try:
		results = api.search(sys.argv[2])
		# Show the result
		f=open('ip-temp.txt','w')
		for result in results['matches']:
			ip=result['ip_str']
			print('Found IP: ',ip)
			f.write(ip+'\n')
		f.close()
	except:
		print('Error Occurred')
elif sys.argv[1].lower()=='scan':
	f=open(sys.argv[2],'r').readlines()
	for i in range(len(f)):
		print('Scanning '+str(i+1)+' out of '+str(len(f))+' IPs')
		os.system('nmap -sS '+f[i]+' >>results.txt')
