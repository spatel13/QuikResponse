from flask_restful import Resource
from flask import jsonify

# Sample resource
class HelloWorld(Resource):
   def get(self):
      # This method gets called on a GET request, pretty neato huh?
      return jsonify({'hello': 'world'})

