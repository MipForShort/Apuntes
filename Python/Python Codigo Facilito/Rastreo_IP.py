import nmap

nmap_path = [r"C:\Program Files (x86)\Nmap\nmap.exe",]
scanner = nmap_path.PortScanner(nmap_search_path = nmap_path)

ip = input("Inserte una dirección IP: ")
print("Esta es tu IP:", ip)
scanner.scan(ip)
print(scanner.all_hosts())
 
