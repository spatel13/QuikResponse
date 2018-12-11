import pdb
from flask_restful import Resource
from flask import jsonify
from DbModels import Mission 
from DbModels import Missioninventory
from DbModels import Missionrequests
from DbModels import Missionstatuses
from DbModels import Rescuermissionassignments
from DbModels import database as db
from peewee import DoesNotExist
from playhouse.shortcuts import model_to_dict

def lookup_linked_entries(mission):
   # Get all of the linked entries.
   try:
      inventory = Missioninventory.select().join(Mission).where(Mission.id == mission.id)
      requests = Missionrequests.select().join(Mission).where(Mission.id == mission.id)
      status = Missionstatuses.select().join(Mission).where(Mission.id== mission.id)
      rescuers = Rescuermissionassignments.select().join(Mission).where(Mission.id == mission.id)
      dict_mission = model_to_dict(mission)
      if len(inventory) > 0:
         dict_mission['inventory'] = [model_to_dict(x) for x in inventory]
         for entry in dict_mission['inventory']:
            del entry['missionid']
      if len(requests) > 0:
         dict_mission['requests'] = [model_to_dict(x) for x in requests]
         for entry in dict_mission['requests']:
            del entry['missionid']
      if len(status) > 0:
         dict_mission['status'] = [model_to_dict(x) for x in status]
         for entry in dict_mission['status']:
            del entry['missionid']
      if len(rescuers) > 0:
         dict_mission['rescuers'] = [model_to_dict(x) for x in rescuers]
         for entry in dict_mission['rescuers']:
            del entry['missionid']
      return dict_mission
   except:
      return {'Error':'Ya Dun\'Goofed'}

class MissionRoute(Resource):
   def get(self):
      try:
         # Get a list of all of the Missions.
         missions = Mission.select()
         return jsonify([lookup_linked_entries(mission) for mission in missions])
      except DoesNotExist:
         pass
      return '', 204
