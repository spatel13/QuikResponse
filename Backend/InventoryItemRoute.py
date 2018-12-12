import pdb
from flask_restful import Resource, reqparse
from flask import jsonify, Request
from DbModels import Inventoryitem 
from DbModels import database as db
from peewee import DoesNotExist, IntegrityError
from playhouse.shortcuts import model_to_dict

class InventoryItemRoute(Resource):
   def get(self, lookup_by=None, criteria_1=None, criteria_2=None):
      try:
         if not lookup_by and not criteria_1:
            return jsonify([model_to_dict(x) for x in Inventoryitem.select()])
         elif lookup_by == 'id':
            return jsonify([model_to_dict(Inventoryitem.get_by_id(criteria_1))])
         elif lookup_by == 'name':
            the_cars = Inventoryitem.select().where(Inventoryitem.name == criteria_1)
            if len(the_cars) > 0:
               return jsonify([model_to_dict(x) for x in the_cars])
         elif lookup_by == 'makemodel' and criteria_1 and criteria_2:
            the_cars = Inventoryitem.select().where(Inventoryitem.name == criteria_1, \
                                                    Inventoryitem.type == criteria_2)
            if len(the_cars) > 0:
               return jsonify([model_to_dict(x) for x in the_cars])
      except DoesNotExist:
         pass
      return '', 204

   def post(self, lookup_by=None, criteria_1=None, criteria_2=None):
      if lookup_by or criteria_1 or criteria_2:
         return '', 400
      try:
         # Parse the arguments.
         parser = reqparse.RequestParser()
         parser.add_argument('details')
         parser.add_argument('isperishable')
         parser.add_argument('name')
         parser.add_argument('type')
         parser.add_argument('weight')
         args = parser.parse_args()
         # Load 'em into a DB model.
         entry = Inventoryitem(**args)
         # Debug: Failing on entry.save()
         pdb.set_trace()
         print(entry.isperishable)
         entry.save()
         if entry.save():
            # Great! Send back a copy to confirm.
            return model_to_dict([entry])
         else:
            # Not great! Let 'em know ya dun goofed.
            pass
      except IntegrityError:
         return jsonify({'Error':'Ya Dun Goofed.'})
      except:
         pass
      return '', 500
