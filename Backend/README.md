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
