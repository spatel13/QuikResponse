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

# Add api resources and bind to URLs
api.add_resource(UserRoute, '/api/user', '/api/user/<int:user_id>')

# Register all of the routes
api.init_app(app)

if __name__ == '__main__':
   # Connect to the database
   db.connect()
   #Run the app
   app.run(debug=True);


