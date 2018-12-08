from peewee import *

database = SqliteDatabase('../Database/quik_response.db', **{})

class UnknownField(object):
    def __init__(self, *_, **__): pass

class BaseModel(Model):
    class Meta:
        database = database

class Inventoryitem(BaseModel):
    details = CharField(null=True)
    isperishable = UnknownField(column_name='isPerishable', null=True)  # TINYINT
    name = CharField(null=True)
    type = CharField(null=True)
    weight = CharField(null=True)

    class Meta:
        table_name = 'InventoryItem'

class Location(BaseModel):
    address = CharField(null=True)
    lat = UnknownField(null=True)  # FLOAT
    long = UnknownField(null=True)  # FLOAT

    class Meta:
        table_name = 'Location'

class User(BaseModel):
    email = CharField(null=True)
    isavailable = CharField(column_name='isAvailable', null=True)
    ispaid = CharField(column_name='isPaid', null=True)
    locationid = ForeignKeyField(column_name='locationID', field='id', model=Location, null=True)
    name = CharField(null=True)
    phonenumber = CharField(column_name='phoneNumber', null=True)

    class Meta:
        table_name = 'User'

class Operationschief(BaseModel):
    rank = CharField(null=True)
    specialty = CharField(null=True)
    userid = ForeignKeyField(column_name='userID', field='id', model=User, null=True)

    class Meta:
        table_name = 'OperationsChief'

class Mission(BaseModel):
    createdby = ForeignKeyField(column_name='createdBy', field='id', model=Operationschief, null=True)
    datecreated = DateTimeField(column_name='dateCreated', null=True)
    details = CharField(null=True)

    class Meta:
        table_name = 'Mission'

class Missioninventory(BaseModel):
    itemid = ForeignKeyField(column_name='itemID', field='id', model=Inventoryitem, null=True)
    missionid = ForeignKeyField(column_name='missionID', field='id', model=Mission, null=True)

    class Meta:
        table_name = 'MissionInventory'

class Rescuerequester(BaseModel):
    emergencycontactname = CharField(column_name='emergencyContactName', null=True)
    emergencycontactnum = CharField(column_name='emergencyContactNum', null=True)
    emergencycontactrelationship = CharField(column_name='emergencyContactRelationship', null=True)
    name = CharField(null=True)
    phonenumber = CharField(column_name='phoneNumber', null=True)

    class Meta:
        table_name = 'RescueRequester'

class Rescuerequest(BaseModel):
    date = DateTimeField(null=True)
    details = CharField(null=True)
    locationid = ForeignKeyField(column_name='locationID', field='id', model=Location, null=True)
    requesterid = ForeignKeyField(column_name='requesterID', field='id', model=Rescuerequester, null=True)
    severity = CharField(null=True)

    class Meta:
        table_name = 'RescueRequest'

class Missionrequests(BaseModel):
    missionid = ForeignKeyField(column_name='missionID', field='id', model=Mission, null=True)
    requestid = ForeignKeyField(column_name='requestID', field='id', model=Rescuerequest, null=True)

    class Meta:
        table_name = 'MissionRequests'

class Status(BaseModel):
    dateupdated = DateTimeField(column_name='dateUpdated')
    notes = CharField(null=True)
    status = CharField(null=True)

    class Meta:
        table_name = 'Status'

class Missionstatuses(BaseModel):
    missionid = ForeignKeyField(column_name='missionID', field='id', model=Mission, null=True)
    statusid = ForeignKeyField(column_name='statusID', field='id', model=Status, null=True)

    class Meta:
        table_name = 'MissionStatuses'

class Rescuer(BaseModel):
    type = CharField(null=True)
    userid = ForeignKeyField(column_name='userID', field='id', model=User, null=True)

    class Meta:
        table_name = 'Rescuer'

class Rescuermissionassignments(BaseModel):
    missionid = ForeignKeyField(column_name='missionID', field='id', model=Mission, null=True)
    rescuerid = ForeignKeyField(column_name='rescuerID', field='id', model=Rescuer, null=True)

    class Meta:
        table_name = 'RescuerMissionAssignments'

