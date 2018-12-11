from flask_restful import Resource
from flask import jsonify
from DbModels import User 
from DbModels import Operationschief
from DbModels import Rescuerequester
from DbModels import Location
from DbModels import database as db
from peewee import DoesNotExist
from playhouse.shortcuts import model_to_dict

# Sample resource
class UserRoute(Resource):
   def get(self, user_id=None):
      try:
         if user_id:
            # Find the user with that id.
            the_users = [User.get_by_id(user_id)]
         else:
            # Get a list of all of the users.
            the_users = User.select()  
         if len(the_users) > 0:
            return jsonify([model_to_dict(x) for x in the_users])
      except DoesNotExist: 
         pass
      return '', 204 
