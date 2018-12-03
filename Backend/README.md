# QuikResponse Back-End

## A Note From Mike Mehl

Here's a little thing I've started. 
This uses Flask with a few extensions to make our lives easier:

   * flask - your bread and butter 
   * flask_restful - define resources as classes with methods for handling http requests 
   * flask_sqlalchemy - ORM for SQL databases

I seperated out database classes from api classes in case something gets weird in either layer. 
It makes for a little more verbose code, but should also make it easier to track down any problems that pop up.
If any of this is dumb, let me know. I don't do much web stuff anymore.
Also, I'm not sure how to handle users. It's been a while since I've used sessions.

## Documentation

All of these packages have pretty good documentation. 
Below are the pages I used as starting points:

   * [Flask](http://flask.pocoo.org/docs/1.0/quickstart/)
   * [Flask-RESTful](https://flask-restful.readthedocs.io/en/latest/quickstart.html)
   * [Flask-SQLAlchemy](http://flask-sqlalchemy.pocoo.org/2.3/quickstart/)
