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

   def post(self, lookup_by=None, criteria=None):
      if lookup_by or criteria:
         return '', 400
      try:
         # Parse the arguments.
         parser = reqparse.RequestParser()
         parser.add_argument('emergencyContactName')
         parser.add_argument('emergencyContactNum')
         parser.add_argument('emergencyContactRelationship')
         parser.add_argument('name')
         parser.add_argument('phoneNumber')
         args = parser.parse_args()
         # Figure out a good id to use for our new item.
         max_id = Rescuerequester.select(fn.MAX(Rescuerequester.id)).scalar()
         args['id'] = max_id + 1
         # Load 'em into a DB model.
         entry = Rescuerequester(**args)
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

   def put(self, lookup_by=None, criteria=None):
      if lookup_by or criteria:
         return '', 400
      try:
         # Parse the arguments.
         parser = reqparse.RequestParser()
         parser.add_argument('emergencyContactName')
         parser.add_argument('emergencyContactNum')
         parser.add_argument('emergencyContactRelationship')
         parser.add_argument('name')
         parser.add_argument('phoneNumber')
         parser.add_argument('id')
         args = parser.parse_args()
         entry = Rescuerequester.get_by_id(int(args['id']))
         entry.emergencyContactName          = args['emergencyContactName']
         entry.emergencyContactNum           = args['emergencyContactNum'] 
         entry.emergencyContactRelationship  = args['emergencyContactRelationship'] 
         entry.name                          = args['name']
         entry.phoneNumber                   = args['phoneNumber']
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
