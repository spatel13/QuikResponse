import pdb
from flask_restful import Resource
from flask import jsonify
from DbModels import Mission 
from DbModels import Missioninventory
from DbModels import Inventoryitem
from DbModels import Missionrequests
from DbModels import Rescuerequest
from DbModels import Missionstatuses
from DbModels import Rescuermissionassignments
from DbModels import Rescuer
from DbModels import database as db
from peewee import DoesNotExist
from playhouse.shortcuts import model_to_dict

class MissionRoute(Resource):
   def get(self, mission_id=None, target=None):
      try:
         if not mission_id and not target:
            # Get a list of all of the Missions.
            missions = Mission.select()
            ret_list = []
            for mission in missions:
               try:
                  ret_list.append(model_to_dict(mission))
               except:
                  pass
            return jsonify(ret_list)
         elif mission_id:
            if not target:
               # Get a single mission.
               return jsonify([model_to_dict(Mission.get(Mission.id == mission_id))])
            elif target == 'inventory':
               # Get the mission's inventory.
               items = Inventoryitem.select().join(Missioninventory).join(Mission).where(Mission.id == mission_id)
               if len(items) > 0:
                  return jsonify([model_to_dict(x) for x in items])
            elif target == 'rescuers':
               # Get assigned rescuers.
               rescuers = Rescuer.select().join(Rescuermissionassignments).join(Mission).where(Mission.id == mission_id)
               if len(rescuers) > 0:
                  return jsonify([model_to_dict(x) for x in rescuers])
            elif target == 'status':
               # Get mission status.
               status = Status.select().join(Missionstatuses).join(Mission).get().where(Mission.id == mission_id)
               return jsonify([status])
            elif target == 'requests':
               # Get assigned requests.
               requests = Rescuerequest.select().join(Missionrequests).join(Mission).where(Mission.id == mission_id)
               if len(requests) > 0:
                  return jsonify([model_to_dict(x) for x in requests])
      except DoesNotExist:
         pass
      return '', 204


   def post(self, mission_id=None, target=None):
      if mission_id or target:
         return '', 400
      try:
         # Parse the arguments.
         parser = reqparse.RequestParser()
         parser.add_argument('datecreated')
         parser.add_argument('details')
         parser.add_argument('createdby')
         args = parser.parse_args()
         # Figure out a good id to use for our new item.
         max_id = Mission.select(fn.MAX(Rescuerequest.id)).scalar()
         args['id'] = max_id+1
         # Load 'em into a DB model.
         entry = Mission(**args)
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

   def put(self, mission_id=None, target=None):
      if lookup_by or criteria:
         return '', 400
      try:
         # Parse the arguments.
         parser = reqparse.RequestParser()
         parser.add_argument('datecreated')
         parser.add_argument('details')
         parser.add_argument('createdby')
         parser.add_argument('id')
         args = parser.parse_args()
         # Lookup the matching entry and update it's values.
         entry = Mission.get_by_id(int(args['id']))
         entry['datecreated'] = args['datecreated']
         entry['details'] = args['details']
         entry['createdby'] = args['createdby']
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

