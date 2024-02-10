Feature: Read the json file 

	Scenario: Json format  and print json 
# jason array which is consist no of object having key value pair 
	* def JsonObject  =
	"""
	[
	
	{
	
	"name" : "Aakash",
	"mobile no" : 8928295005,
	"City" : "Solapur"
	
	
	},{
	"name" : "Avinash",
	"mobile no" : 8668727053,
	"City" : "pune"
	
	
	}
	
	
	]
	
	"""
	# print full array 
	* print JsonObject
	# print index object from array 
	* print JsonObject[0]
	
	
	* print JsonObject[0].name 
	* print JsonObject[1].name + " "+ JsonObject[1].City
	
	
	Scenario: Complex jason object 
	
	* def jasonObject = 
	"""
	{"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}}
	
	
	 """
	
	* print jasonObject 
	
	* print jasonObject.menu 
	* print jasonObject.id
	* print jasonObject.menu.popup
	* print jasonObject.menu.popup.menuitem[2]
	* print jasonObject.menu.popup.menuitem[1].onclick
	
	