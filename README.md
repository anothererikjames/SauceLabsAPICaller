# SauceLabsAPICaller

SauceLabsAPICaller.ipa is ready to run on any RDC device running at least iOS 15. It's a pretty simple project that runs through an array of apis and calls each one. The resulting har file can be imported for API testing.

Adding a url can be done in the callAllAPIS function in the APICaller class. New urls will require re export of the app.

Current URLs hit are:

"https://jsonplaceholder.typicode.com/posts/1",
"https://catfact.ninja/fact",
"https://www.boredapi.com/api/activity",
"https://api.agify.io?name=meelad",
"https://randomuser.me/api/", 
"https://api.nationalize.io?name=nathaniel",
"https://datausa.io/api/data?drilldowns=Nation&measures=Population"
"http://demoapi.apifortress.com/api/retail/product?key=ABC123"
