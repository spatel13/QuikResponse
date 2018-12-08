# Base imports
from flask import Flask
from flask_restful import Api
from flask_sqlalchemy import SQLAlchemy
from ModelImports import db

#Resource imports
from ApiClasses.HelloWorld import HelloWorld

# Setup Flask stuff
app = Flask(__name__);
app.config.update(TESTING='true')

# Setup Flask-RESTful stuff
api = Api(app)

# Setup SQLAlchemy
db.init_app(app)

# Add api resources and bind to URLs
api.add_resource(HelloWorld, '/')

if __name__ == '__main__':
   #Run the app
   app.run(debug=True);


