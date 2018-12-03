from ..ModelImports import db

class HelloWorldDb(db.Model):
   id = db.Column(db.Integer, primary_key=True)
