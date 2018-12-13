import pdb
from flask_restful import Resource, reqparse
from flask import jsonify
from DbModels import Rescuerequest
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
            return jsonify([model_to_dict(the_chief)])
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
         parser.add_argument('date')
         parser.add_argument('details')
         parser.add_argument('locationid')
         parser.add_argument('requesterid')
         parser.add_argument('severity')
         args = parser.parse_args()
         # Figure out a good id to use for our new item.
         pdb.set_trace()
         max_id = Rescuerequest.select(fn.MAX(Rescuerequest.id)).scalar()
         # Load 'em into a DB model.
         entry = Rescuerequest(\
            date=args['date'],\
            details=args['details'],\
            locationid=args['locationid'],\
            requesterid=args['requesterid'],\
            severity=args['severity'],\
            id=max_id+1
            )
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
