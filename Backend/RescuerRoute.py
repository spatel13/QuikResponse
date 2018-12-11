from flask_restful import Resource
from flask import jsonify
from DbModels import User 
from DbModels import Rescuer 
from DbModels import Location
from DbModels import database as db
from peewee import DoesNotExist
from playhouse.shortcuts import model_to_dict

# Rescuer Route Handler
class RescuerRoute(Resource):
   def get(self, lookup_by=None, criteria=None):
      try:
         if not lookup_by and not criteria:
            return jsonify([model_to_dict(x) for x in Rescuer.select()])
         elif lookup_by == 'id':
            rescuer_id = int(criteria)
            the_rescuer= Rescuer.get_by_id(rescuer_id)
            return jsonify(model_to_dict(the_rescuer))
         elif lookup_by == 'userid':
            the_rescuers = Rescuer.select().join(User).where(User.id == criteria)
            if len(the_rescuers) > 0:
               return jsonify([model_to_dict(x) for x in the_rescuers])
         elif lookup_by == 'name':
            the_rescuers = Rescuer.select().join(User).where(User.name == criteria)
            if len(the_rescuers) > 0:
               return jsonify([model_to_dict(x) for x in the_rescuers])
      except DoesNotExist:
         pass
      return '', 204
