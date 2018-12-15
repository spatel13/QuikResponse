# QuikResponse Back-End

## Implemented Routes

These are the routes and their relevant HTTP methods that have been implemented so far. 
Where possible, a resource shall return any resources it has a foreign key to as part of it's JSON return value, in place of the id of that element (i.e. if a resource has a foreign key for "userid", in the return JSON "userid" will contain the JSON information about that user).

### /api/user

* /api/user
  * GET: Returns an array of all of the users.
* /api/user/id/\<int\>
  * GET: Returns an array containg the user with the specified id.

### /api/opchief

* /api/opchief
  * GET: Returns an array of all of the operations chiefs.
* /api/opchief/\<string\>/\<string\/int\>
  * GET: Returns an aray of all of the operations chiefs matching criteria. The first string determines the lookup critera, and the second string determines the lookup key. 
  The first string may be one of:
    * id    
    * userid

### /api/rescuer

* /api/rescuer
  * GET: Returns an array of all rescuers.
* /api/rescuer/\<string\>/\<string/int\>
  * GET: Lookup a rescuer by matchine criteria. The first string determines the lookup criteria, and the second string determines the lookup key. 
  The first string may be one of:
    * id
    * userid

### /api/rescuerequester

* /api/rescuer
  * GET: Returns an array of all rescuers.
  * POST: Create a rescue requester. Arguments:
    * emergencyContactName
    * emergencyContactNum
    * emergencyContactRelationship
    * name
    * phoneNumber
    A copy of the object will be returned on success.
  * PUT: Update a rescue requester. Arguments:
    * emergencyContactName
    * emergencyContactNum
    * emergencyContactRelationship
    * name
    * phoneNumber
    * id
    Id must be specified. A copy of the object will be returned on success.
* /api/rescuer/\<string\>/\<string/int\>
  * GET: Lookup a rescuer by matchine criteria. The first string determines the lookup criteria, and the second string determines the lookup key. 
  The first string may be one of:
    * id
    * name 

### /api/inventory

  * GET: Returns an array of all inventory items.
  * POST: Create an inventory item . Arguments:
    * details
    * isperishable
    * name
    * type
    * weight
    A copy of the object will be returned on success.
  * PUT: Update an inventory item. Arguments:
    * details
    * isperishable
    * name
    * type
    * weight
    Id must be specified. A copy of the object will be returned on success.
* /api/inventory/\<string\>/\<string/int\>
  * GET: Lookup an inventory item by matchine criteria. The first string determines the lookup criteria, and the second string determines the lookup key. 
  The first string may be one of:
    * id
    * name 
* /api/inventory/makemodel/\<string\>/\<string\>
  * GET: Lookup an inventory item by make and model, specified in the string arguments, respectively.

### /api/location

* /api/location
  * GET: Returns an array of all locations.
  * POST: Create a location. Arguments:
    * address
    * lat
    * long 
    Returns a copy of the object on success.
  * PUT: Update a location. Arguments:
    * address
    * lat
    * long 
    * id
    Returns a copy of the object on success.
* /api/location/id/\<int\>
  * GET: Return the location with id specified by int.

### /api/mission 

* /api/mission
  * GET: Returns an array of all Missions.
  * POST: Create a mission. Returns a copy on success. Arguments:
    * datecreated
    * details
    * createdby
  * POST: Update a mission. Returns a copy on success. Arguments:
    * datecreated
    * details
    * createdby
    * id
* /api/mission/\<int\>
  * GET: Returns the mission with id specified by int.
* /api/mission/\<int\>/\<string\>
  * GET: Return a copy of the mission specified by the int argument's resources, specified by string argument. String may be one of:
    * inventory
    * rescuers
    * status
    * requests

### /api/request

* /api/request
  * GET: Returns a list of all rescue requests.
  * POST: Create a rescue request. A copy is returned on success. Arguments:
    * date
    * details
    * locationid
    * requesterid
    * severity 
  * PUT: Update a rescue request. A copy is returned on success. Arguments:
    * date
    * details
    * locationid
    * requesterid
    * severity 
    * id
* /api/request/\<string\>/\<string/int\>
  * GET: Return the rescue request with lookup criteria specified by the first string and lookup key specified by the second key. Possible criteria:
    * id
    * userid

### /api/missioninventory

* /api/missioninventory
  * POST: Add an item to a mission's inventory. Returns a copy on success. Arguments:
    * itemid
    * missionid
  * PUT: Update a mission inventory item. Returns a copy on success. Arguments:
    * itemid
    * missionid
    * id

