Feature: Post Req add new user with json 

Background: 
* url baseUrl

* def random_string = 
""" 
function(s){

var text ="";
var pattern ="ABCDEFGHIJKLMNOQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
for (var i=0; i<s; i++)
text +=pattern.charAt(Math.floor(Math.random() * pattern.length()));
return text;
}

"""
* def randomstring = random_string(10)
* print randomstring 
* def requestPlayload =
"""
{
   
        "name": "Deeptimoyee Somayaji",
        "gender": "female",
        "status": "inactive" }

"""
* set requestPlayload.email = randomstring+'@sawayn3.org'

Scenario: create a user with raw json data 

Given path '/public/v2/users'
And request requestPlayload 
And header Authorization = 'Bearer ' + tockenID 
When method Post
Then status 201

# assertions 
And match $.name == 'Deeptimoyee Somayaji'
And match $.gender == 'female'
And match $.email == requestPlayload.email

