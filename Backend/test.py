import requests

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
