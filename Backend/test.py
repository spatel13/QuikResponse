import requests
import json

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
