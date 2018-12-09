from flask_restful import Resource
from flask import jsonify
from DbModels import User 
from DbModels import Operationschief
from DbModels import Location
from DbModels import database as db
from peewee import DoesNotExist
from playhouse.shortcuts import model_to_dict

# Sample resource
class OpChiefRoute(Resource):
   def get(self, op_id):
      try:
         the_chief = Operationschief.get_by_id(op_id)
         the_user = User.get_by_id(the_chief.userid)
         the_loc = Location.get_by_id(the_user.locationid)
         ret_dict = model_to_dict(the_chief) 
         ret_dict['user_info'] = model_to_dict(the_user)
         ret_dict['location_info'] = model_to_dict(the_loc)
         return jsonify(ret_dict)
      except DoesNotExist: 
         pass
      return '', 204 
