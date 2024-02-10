Feature: Post Req add new user with json 

Background: 
* url baseUrl
* def requestPlayload =
"""
{
   
        "name": "Deeptimoyee Somayaji",
        "email": "deeptimoyee_somayaji@sawayn3.org",
        "gender": "female",
        "status": "inactive" }

"""

Scenario: create a user with raw json data 

Given path '/public/v2/users'
And request requestPlayload 
And header Authorization = 'Bearer ' + tockenID 
When method Post
Then status 201

# assertions 
And match $.name == 'Deeptimoyee Somayaji'
And match $.email == 'deeptimoyee_somayaji@sawayn4.org'
And match $.gender == 'female'

