Feature: sample

  Scenario: first hello world
  # print statements 
    * print 'hello'

  Scenario: second scenario
    * print 'second'
    
  Scenario: Declear and print the variables 
  # define the varibales 
  
  	* def balance = 200
  	* def fee = 10
  	* def tax = 20
  # conacatination if in bracket it will add 
  	* print 'total=' + (balance + fee + tax)
  	* print 'total=' + balance + fee + tax
  	
  	Scenario: Calculation 
  
  
  	* def pen = 200
  	* def price = 10
  	* def tax = 20
  	
  	* print (pen * price + tax)