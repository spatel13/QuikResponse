from flask_restful import Resource
from flask import jsonify
from DbModels import Location
from DbModels import database as db
from peewee import DoesNotExist
from playhouse.shortcuts import model_to_dict

class LocationRoute(Resource):
   def get(self, loc_id=None):
      try:
         if loc_id:
            return jsonify([model_to_dict(Location.get_by_id(loc_id))])
         else:
            return jsonify([model_to_dict(x) for x in Location.select()])
      except:
         pass
      return '', 204
