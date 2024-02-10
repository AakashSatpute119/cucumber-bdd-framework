Feature: Get api query Parameters

Scenario: get all active and male users 
	* def query = {status:'active', gender:'male'}

Given url baseUrl+'/public/v2/users'
And params query 
When method GET
Then status 200
* print response 

Scenario: get all active users 
* def query = {status: 'active'}
Given url baseUrl+'/public/v1/users'
And params query
When method GET
Then status 200
	* print response
	* def jsonResopons = response 
	* print jsonResopons 
	* def usercount = jsonResopons.data.length
	* print usercount
	 * match usercount == 20
	
	