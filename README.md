# eToro API

This is an easy-to-maintain REST client API for eToro.
It uses the OpenAPI specifications generated from the eToro developer website and generates generic wrappers to use them.
Any update to the API from the eToro side can be reflected here by updating the api from the provided OpenAPI descriptions provided by eToro.

I already generated the eToro APIs for the languages: [C#](/csharp/) and [Python](/python/).
Other languages can be easily generated.
You need to have the swagger code-generator installed.
Here you can find how to install it: 

https://github.com/swagger-api/swagger-codegen

Then, modify and run the [generation script](/generate/generate.sh).
