import requests
import json

############################################################################################################################
print("ROUTE TEST 1: INVENTORY")
# Dummy inventory data.
inventory_data = {'details':'It\'s an egg.', 'isperishable':int(1), 'name':'Egg', 'type':'Egg', 'weight':'1oz'}
print("Data:")
print(inventory_data)

# Make a post request.
print("Sending...")
r = requests.post('http://127.0.0.1:5000/api/inventory', data=inventory_data)

# Did it like our egg?
print("Received:")
print(r.json())

# Wait, we put the wrong weight for the egg!
# Let's change it...
inventory_data['weight'] = '1lb'
inventory_data['id'] = json.loads(r.text)['id']
r = requests.put('http://127.0.0.1:5000/api/inventory', data=inventory_data)

# Did it update our egg?
print("Received:")
print(r.json())
item_id = json.loads(r.text)['id']


############################################################################################################################
print("ROUTE TEST 2: EGGMERGENCY")
# Eggs sure are yummy. But what if we need some? 
# Well, I think in that case, we need to put in a rescue request!
rescue_data = {'details':'I really want an egg.', 'date':None , 'locationid':1, 'requesterid':1, 'severity':'HIGHEST'}
print("Data:")
print(rescue_data)

# Post that jam.
print("Sending...")
r = requests.post('http://127.0.0.1:5000/api/request', data=rescue_data)

# Will they send us an egg?
print("Received:")
print(r.json())

# Wait, we need more eggs!
# Let's ask for more eggs.
rescue_data['details'] = 'I really really want two eggs.'
rescue_data['id'] = json.loads(r.text)['id']
r = requests.put('http://127.0.0.1:5000/api/request', data=rescue_data)

# Did it update our eggmergency?
print("Received:")
print(r.json())
request_id = json.loads(r.text)['id']


############################################################################################################################
print("ROUTE TEST 3: MISSION")
mission_data = {'details':"Some guy really needs an egg.", 'createdby':1}
print("Data:")
print(mission_data)
print("Sending:")
r = requests.post('http://127.0.0.1:5000/api/mission', data=mission_data)
print("Received:")
print(r.json())
mission_data['details'] = "This guy REALLY needs an egg."
mission_data['id'] = json.loads(r.text)['id']
mission_id = mission_data['id']
r = requests.put('http://127.0.0.1:5000/api/mission', data=mission_data)
print("Received:")
print(r.json())

############################################################################################################################
print("ROUTE TEST 4: MISSION INVENTORY")
inv_data = {'itemid':item_id, 'missionid':mission_id}
print("Data:")
print(inv_data)
print("Sending:")
r = requests.post('http://127.0.0.1:5000/api/missioninventory', data=inv_data)
print("Received:")
print(r.json())
inv_data['id'] = json.loads(r.text)['id']
r = requests.put('http://127.0.0.1:5000/api/missioninventory', data=inv_data)
print("Received:")
print(r.json())

############################################################################################################################
print("ROUTE TEST 5: MISSION REQUESTS")
req_data = {'requestid':request_id, 'missionid':mission_id}
print("Data:")
print(req_data)
print("Sending:")
r = requests.post('http://127.0.0.1:5000/api/missionrequest', data=req_data)
print("Received:")
print(r.json())
req_data['id'] = json.loads(r.text)['id']
r = requests.put('http://127.0.0.1:5000/api/missionrequest', data=req_data)
print("Received:")
print(r.json())


############################################################################################################################
print("ROUTE TEST 6: MISSION STATUS")
stat_data = {'statusid':1, 'missionid':mission_id}
print("Data:")
print(stat_data)
print("Sending:")
r = requests.post('http://127.0.0.1:5000/api/missionrequest', data=stat_data)
print("Received:")
print(r.json())
stat_data['id'] = json.loads(r.text)['id']
r = requests.put('http://127.0.0.1:5000/api/missionrequest', data=stat_data)
print("Received:")
print(r.json())


############################################################################################################################
print("ROUTE TEST 7: RESCUER ASSIGNMENT ")
assign_data = {'rescuerid':1, 'missionid':mission_id}
print("Data:")
print(assign_data)
print("Sending:")
r = requests.post('http://127.0.0.1:5000/api/rescuermissionassignment', data=assign_data)
print("Received:")
print(r.json())
assign_data['id'] = json.loads(r.text)['id']
r = requests.put('http://127.0.0.1:5000/api/rescuermissionassignment', data=assign_data)
print("Received:")
print(r.json())
