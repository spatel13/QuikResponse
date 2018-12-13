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

   def get(self, lookup_by=None, criteria=None):
      try:
         if not lookup_by and not criteria:
            return jsonify([model_to_dict(x) for x in Rescuerequester.select()])
         elif lookup_by == 'id':
            the_id = int(criteria)
            the_requester = Rescuerequester.get_by_id(the_id)
            return jsonify([model_to_dict(the_requester)])
         elif lookup_by == 'name':
            criteria = str(criteria)
            the_requesters = [Rescuerequester.get(Rescuerequester.name == criteria)]
            if len(the_requesters) > 0:
               return jsonify([model_to_dict(x) for x in the_requesters])
      except DoesNotExist:
         pass
      return '', 204
