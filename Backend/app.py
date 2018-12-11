# Base imports
from flask import Flask
from flask_restful import Api
from peewee import *
from DbModels import database as db

# Setup Flask stuff
app = Flask(__name__);

# Setup Flask-RESTful stuff
api = Api()

# Resource imports
from UserRoute import UserRoute
from OpChiefRoute import OpChiefRoute
from RescueRequesterRoute import RescueRequesterRoute
from LocationRoute import LocationRoute
from RescuerRoute import RescuerRoute
from InventoryItemRoute import InventoryItemRoute
from MissionRoute import MissionRoute

# Add api resources and bind to URLs
api.add_resource(UserRoute, '/api/user', '/api/user/id/<int:user_id>')
api.add_resource(OpChiefRoute, '/api/opchief', '/api/opchief/<string:lookup_by>/<string:criteria>')
api.add_resource(RescuerRoute, '/api/rescuer', '/api/rescuer/<string:lookup_by>/<string:criteria>')
api.add_resource(RescueRequesterRoute, '/api/rescuerequester', '/api/rescuerequester/<string:lookup_by>/<string:criteria>')
api.add_resource(InventoryItemRoute, '/api/inventory', \
   '/api/inventory/<string:lookup_by>/<string:criteria_1>', \
   '/api/inventory/<string:lookup_by>/<string:criteria_1>/<string:criteria_2>')
api.add_resource(LocationRoute, '/api/location', '/api/location/id/<int:loc_id>')
api.add_resource(MissionRoute, '/api/mission')

# Register all of the routes
api.init_app(app)

if __name__ == '__main__':
   # Connect to the database
   db.connect()
   #Run the app
   app.run(debug=True);


