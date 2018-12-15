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

   def post(self, loc_id=None):
      if loc_id:
         return '', 400
      try:
         # Parse the arguments.
         parser = reqparse.RequestParser()
         parser.add_argument('address')
         parser.add_argument('lat')
         parser.add_argument('long')
         args = parser.parse_args()
         # Figure out a good id to use for our new item.
         max_id = Location.select(fn.MAX(Location.id)).scalar()
         args['id'] = max_id+1
         # Load 'em into a DB model.
         entry = Location(**args)
         if entry.save(force_insert=True):
            # Great! Send back a copy to confirm.
            # BUT...have to get the actual id (the id in the current entry gets set to the rowid in sqlite).
            entry.id = max_id+1
            return jsonify(model_to_dict(entry))
         else:
            # Not great! Let 'em know ya dun goofed.
            pass
      except IntegrityError:
         return jsonify({'Error':'Ya Dun Goofed.'})
      except:
         pass
      return '', 500

   def put(self, loc_id=None):
      if loc_id:
         return '', 400
      try:
         # Parse the arguments.
         parser = reqparse.RequestParser()
         parser.add_argument('address')
         parser.add_argument('lat')
         parser.add_argument('long')
         parser.add_argument('id')
         args = parser.parse_args()
         # Load 'em into a DB model.
         entry = Location.get_by_id(int(args['id']))
         entry.address = args['address']
         entry.lat = args['lat']
         entry.long = args['long'] 
         if entry.save():
            # Great! Send back a copy to confirm.
            return jsonify(model_to_dict(entry))
         else:
            # Not great! Let 'em know ya dun goofed.
            pass
      except IntegrityError:
         return jsonify({'Error':'Ya Dun Goofed.'})
      except:
         pass
      return '', 500

