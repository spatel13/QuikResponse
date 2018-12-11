from flask_restful import Resource
from flask import jsonify
from DbModels import User 
from DbModels import Operationschief
from DbModels import Location
from DbModels import database as db
from peewee import DoesNotExist
from playhouse.shortcuts import model_to_dict

# Operations Chief Route Handler
class OpChiefRoute(Resource):
   def get(self, lookup_by=None, criteria=None):
      try:
         if not lookup_by and not criteria:
            return jsonify([model_to_dict(x) for x in Operationschief.select()])
         elif lookup_by == 'id':
            op_id = int(criteria)
            the_chief = Operationschief.get_by_id(op_id)
            return jsonify(model_to_dict(the_chief))
         elif lookup_by == 'userid':
            the_chiefs = Operationschief.select().join(User).where(User.id == criteria)
            if len(the_chiefs) > 0:
               return jsonify([model_to_dict(x) for x in the_chiefs])
         elif lookup_by == 'name':
            the_chiefs = Operationschief.select().join(User).where(User.name == criteria)
            if len(the_chiefs) > 0:
               return jsonify([model_to_dict(x) for x in the_chiefs])
      except DoesNotExist:
         pass
      return '', 204
