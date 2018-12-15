from flask_restful import Resource
from flask import jsonify
from DbModels import Mission 
from DbModels import Inventoryitem
from DbModels import Rescuerequest
from DbModels import Missionstatuses
from DbModels import Rescuermissionassignments
from DbModels import Rescuer
from DbModels import database as db
from peewee import DoesNotExist
from playhouse.shortcuts import model_to_dict

class RescuerMissionAssignmentsRoute(Resource):
   def post(self):
      try:
         # Parse the arguments.
         parser = reqparse.RequestParser()
         parser.add_argument('requestID')
         parser.add_argument('missionID')
         args = parser.parse_args()
         # Figure out a good id to use for our new item.
         max_id = Rescuermissionassignments.select(fn.MAX(Rescuermissionassignments.id)).scalar()
         args['id'] = max_id+1
         # Load 'em into a DB model.
         entry = Rescuermissionassignments(**args)
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

   def put(self):
      try:
         # Parse the arguments.
         parser = reqparse.RequestParser()
         parser.add_argument('requestID')
         parser.add_argument('missionID')
         parser.add_argument('id')
         args = parser.parse_args()
         # Lookup the matching entry and update it's values.
         entry = Rescuermissionassignments.get_by_id(int(args['id']))
         entry.itemid = args['itemid']
         entry.missionid = args['missionid']
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

