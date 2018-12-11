from flask_restful import Resource
from flask import jsonify
from DbModels import Inventoryitem 
from DbModels import database as db
from peewee import DoesNotExist
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
