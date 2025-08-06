from pyzabbix import ZabbixAPI
import datetime

now = datetime.datetime.now().strftime("%Y%m%d_%H-%M-%S")
link = "" #for save in current folder
name = now + '.txt'

z = ZabbixAPI('http://***', user='***', password='***')
answer = z.do_request('apiinfo.version')
print ("Zabbix version:",answer['result'])
print('Start')

groups = z.hostgroup.get(output=['groupid','name'])
for group in groups:
  print ("Export group:", group['groupid'],group['name'])
  d = dict()
  hosts = z.host.get(['hostid', 'proxy_hostid', 'host', 'status', 'ipmi_authtype', 'ipmi_privilege', 'ipmi_username', 'ipmi_password', 'maintenanceid', 'maintenance_status', 'maintenance_type', 'maintenance_from', 'name', 'flags', 'templateid', 'description', 'tls_connect', 'tls_accept', 'tls_issuer', 'tls_subject', 'proxy_address', 'auto_compress', 'custom_interfaces', 'uuid', 'inventory_mode', 'active_available'])#output=['hostid','name']
  for host in hosts:
    key = host['hostid']
    if key not in d:
      d[key] = dict()
      d[key]["name"] = host['name']
      d[key]["status"] = host['status']  
  hosts = z.hostinterface.get(['interfaceid', 'hostid', 'main', 'type', 'useip', 'ip', 'dns', 'port', 'available', 'error', 'errors_from', 'disable_until', 'details'])#output=['ip','interfaceid','hostid']
  for host in hosts:
    key = host['hostid']
    if key in d:
      d[key]["ip"] = host['ip']
      d[key]["error"] = host['error']

with open(link + name, 'w') as f_out: 
    for key in d.keys():
      t = "{}|{}|{}|{}|{}\n".format(str(key),d[key]["name"],d[key]["ip"],d[key]["status"],d[key]["error"])
      f_out.write(t)
print('Save txt file')

print('Finish')
