import pdb
from time import gmtime, strftime
from flask_restful import Resource, reqparse
from flask import jsonify
from DbModels import Rescuerequest
from DbModels import Rescuerequester
from DbModels import Location
from DbModels import database as db
from peewee import DoesNotExist, IntegrityError, fn
from playhouse.shortcuts import model_to_dict

class RescueRequestRoute(Resource):
   def get(self, lookup_by=None, criteria=None):
      try:
         if not lookup_by and not criteria:
            return jsonify([model_to_dict(x) for x in Rescuerequest.select()])
         elif lookup_by == 'id':
            req_id = int(criteria)
            the_request = Rescuerequest.get_by_id(req_id)
            return jsonify([model_to_dict(the_request)])
         elif lookup_by == 'userid':
            the_reqs = Rescuerequest.select().join(User).where(User.id == criteria)
            if len(the_reqs) > 0:
               return jsonify([model_to_dict(x) for x in the_reqs])
      except DoesNotExist:
         pass
      return '', 204

   def post(self, lookup_by=None, criteria=None):
      if lookup_by or criteria:
         return '', 400
      try:
         # Parse the arguments.
         parser = reqparse.RequestParser()
         parser.add_argument('details')
         parser.add_argument('locationid')
         parser.add_argument('requesterid')
         parser.add_argument('severity')
         args = parser.parse_args()
         # Figure out a good id to use for our new item.
         max_id = Rescuerequest.select(fn.MAX(Rescuerequest.id)).scalar()
         # Load 'em into a DB model.
         entry = Rescuerequest(\
            date=strfttime("%Y-%m-%d %H:%M:%S", gmtime()),\
            details=args['details'],\
            locationid=args['locationid'],\
            requesterid=args['requesterid'],\
            severity=args['severity'],\
            id=max_id+1\
            )
         entry.id = max_id+1
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
         parser.add_argument('id')
         parser.add_argument('details')
         parser.add_argument('locationid')
         parser.add_argument('requesterid')
         parser.add_argument('severity')
         args = parser.parse_args()
         # Lookup the matching entry and update it's values.
         entry = Rescuerequest.get_by_id(int(args['id']))
         entry.date=strfttime("%Y-%m-%d %H:%M:%S", gmtime())
         entry.details=args['details']
         entry.locationid=args['locationid']
         entry.requesterid=args['requesterid']
         entry.severity=args['severity']
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
