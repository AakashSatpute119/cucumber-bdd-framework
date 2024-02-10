function fn() { 
var env = karate.env; // get system property 'karate.env' karate.log('karate.env system property was:', env); 
if (!env) { 
env = 'dev'; 
} 

var config = { 
env: env, 

baseUrl: 'https://gorest.co.in',
tockenID: 'c7a740a33fe1c464fd61937ebb20ea9e39e53d374689b813c13f7434af5698d7'
}

if (env == 'dev') { 
// customize 
// e.g. config.foo = 'bar'; 


} else if (env == 'e2e') { 
// customize 

} 
return config; 
}