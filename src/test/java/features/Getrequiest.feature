Feature: Get API Feature 

Scenario: Get user details 

Given url baseUrl+'/public/v2/users'
And path '30'
When method GET
Then status 200
	* print response
# storing the json response 
	* def JsonObject = 	response
	
	* def actualname = 'Mangala Varman'
	* def actualid = 30
	# asertion use match keyword 
	* match actualname == JsonObject.name 
	* match actualid == JsonObject.id 

Scenario: Get user details - user not found 

Given url 'https://gorest.co.in/public/v2/users'
And path '1'

When method GET
Then status 404
	
	