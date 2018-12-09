from flask_restful import Resource
from flask import jsonify
from DbModels import User 
from DbModels import Operationschief
from DbModels import Rescuerequester
from DbModels import Location
from DbModels import database as db
from playhouse.shortcuts import model_to_dict

# Sample resource
class UserRoute(Resource):
   def get(self, user_id=None):
      if user_id:
         # Find the user with that id.
         the_users = [User.select().where(User.id==user_id).get()]
      else:
         # Get a list of all of the users.
         the_users = User.select()  
      if len(the_users) > 0:
         ret_list = [] #List with each users info (return as JSON)
         for user in the_users:
            # Make a dictionary with the basic info. 
            info = model_to_dict(user)
            # Look up location and add to user dictionary.
            loc = Localtion.select().where(Location.id==user.locationID).get() 
            if loc:
               info['location'] = model_to_dict(loc)
            # TODO: Look up any other specific info and add to user dictionary.
            ret_list.append(info)
         return jsonify(ret_list)
      return '', 204 
