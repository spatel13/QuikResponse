from flask_restful import reqparse
from flask_restful import Resource
from flask import jsonify
from DbModels import Rescuerequester
from DbModels import User 
from DbModels import Location
from DbModels import database as db
from peewee import DoesNotExist
from playhouse.shortcuts import model_to_dict

# Sample resource
class RescueRequesterRoute(Resource):
   def __init__(self):
      # request parser logic here for use during POST and PUT requests
      pass

   def get(self, req_id):
      try:
         return jsonify(model_to_dict(Rescuerequester.select(Rescuerequester.id==req_id))
      except DoesNotExist: 
         pass
      return '', 204 

   def post(self):
      return '', 204
