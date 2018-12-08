from flask_restful import Resource
from flask import jsonify
from DbModels import User 
from DbModels import database as db
from playhouse.shortcuts import model_to_dict

# Sample resource
class UserRoute(Resource):
   def get(self):
      # Get a list of all of the users.
      the_users = User.select()  
      if len(the_users) > 0:
         return jsonify([model_to_dict(x) for x in the_users])
      else:
         return '', 204 
