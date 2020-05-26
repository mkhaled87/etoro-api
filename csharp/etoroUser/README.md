# IO.Swagger - the C# library for the User

The User API provides data on a user including trading statistics

This C# SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0
- SDK version: 1.0.0
- Build package: io.swagger.codegen.v3.generators.dotnet.CSharpClientCodegen

<a name="frameworks-supported"></a>
## Frameworks supported
- .NET 4.0 or later
- Windows Phone 7.1 (Mango)

<a name="dependencies"></a>
## Dependencies
- [RestSharp](https://www.nuget.org/packages/RestSharp) - 105.1.0 or later
- [Json.NET](https://www.nuget.org/packages/Newtonsoft.Json/) - 7.0.0 or later
- [JsonSubTypes](https://www.nuget.org/packages/JsonSubTypes/) - 1.2.0 or later

The DLLs included in the package may not be the latest version. We recommend using [NuGet](https://docs.nuget.org/consume/installing-nuget) to obtain the latest version of the packages:
```
Install-Package RestSharp
Install-Package Newtonsoft.Json
Install-Package JsonSubTypes
```

NOTE: RestSharp versions greater than 105.1.0 have a bug which causes file uploads to fail. See [RestSharp#742](https://github.com/restsharp/RestSharp/issues/742)

<a name="installation"></a>
## Installation
Run the following command to generate the DLL
- [Mac/Linux] `/bin/sh build.sh`
- [Windows] `build.bat`

Then include the DLL (under the `bin` folder) in the C# project, and use the namespaces:
```csharp
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;
```
<a name="packaging"></a>
## Packaging

A `.nuspec` is included with the project. You can follow the Nuget quickstart to [create](https://docs.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package#create-the-package) and [publish](https://docs.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package#publish-the-package) packages.

This `.nuspec` uses placeholders from the `.csproj`, so build the `.csproj` directly:

```
nuget pack -Build -OutputDirectory out IO.Swagger.csproj
```

Then, publish to a [local feed](https://docs.microsoft.com/en-us/nuget/hosting-packages/local-feeds) or [other host](https://docs.microsoft.com/en-us/nuget/hosting-packages/overview) and consume the new package via Nuget as usual.

<a name="getting-started"></a>
## Getting Started

```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class Example
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.ApiKey.Add("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.ApiKey.Add("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | The username which we want to get the aggregate data on
            var period = period_example;  // string | The name of the period which we would like to get aggregate data on. The possible values are according to the period name in the metadata <a href=\"docs/services/5784e8446361c811ccfdf536/operations/578501516361c811ccfdf53c\">StatsPeriods API</a> (optional)  (default to SixMonthsAgo)

            try
            {
                // Trade/History/Aggregates
                apiInstance.GetAggregatesHistory(username, period);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetAggregatesHistory: " + e.Message );
            }
        }
    }
}
```

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.etoro.com/API/User/V1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**GetAggregatesHistory**](docs/DefaultApi.md#getaggregateshistory) | **GET** /{Username}/Trade/History/Aggregates | Trade/History/Aggregates
*DefaultApi* | [**GetCopiersHistory**](docs/DefaultApi.md#getcopiershistory) | **GET** /{Username}/Copiers/History | Copiers/History
*DefaultApi* | [**GetCopySimulationData**](docs/DefaultApi.md#getcopysimulationdata) | **GET** /{Username}/CopySimulation | CopySimulation
*DefaultApi* | [**GetDailyGain**](docs/DefaultApi.md#getdailygain) | **GET** /{Username}/DailyGain | Daily Gain
*DefaultApi* | [**GetGains**](docs/DefaultApi.md#getgains) | **GET** /{Username}/Gain | Monthly Gain
*DefaultApi* | [**GetLiveCopiers**](docs/DefaultApi.md#getlivecopiers) | **GET** /{Username}/Copiers/Live | Copiers/Live
*DefaultApi* | [**GetLiveRiskScore**](docs/DefaultApi.md#getliveriskscore) | **GET** /{Username}/RiskScore/Live/ | RiskScore/Live
*DefaultApi* | [**GetRiskHistory**](docs/DefaultApi.md#getriskhistory) | **GET** /{Username}/RiskScore/History | RiskScore/History
*DefaultApi* | [**GetUserDiscoveryData**](docs/DefaultApi.md#getuserdiscoverydata) | **GET** /{Username}/Discovery | Discovery
*DefaultApi* | [**GetUserFollowers**](docs/DefaultApi.md#getuserfollowers) | **GET** /{Username}/Social/Followers | Social/Followers
*DefaultApi* | [**GetUserInfo**](docs/DefaultApi.md#getuserinfo) | **GET** /{Username}/Info | Info
*DefaultApi* | [**GetUserPortfolioSummary**](docs/DefaultApi.md#getuserportfoliosummary) | **GET** /{Username}/PortfolioSummary | PortfolioSummary
*DefaultApi* | [**GetUserVisualPortfolio**](docs/DefaultApi.md#getuservisualportfolio) | **GET** /{Username}/VisualPortfolio | VisualPortfolio
*DefaultApi* | [**GetUsersDiscoveryData**](docs/DefaultApi.md#getusersdiscoverydata) | **GET** /Multiple/Discovery | Multiple Discovery
*DefaultApi* | [**GetUsersInfo**](docs/DefaultApi.md#getusersinfo) | **GET** /Multiple/Info | Multiple Info
*DefaultApi* | [**GetUsersVisualPortfolio**](docs/DefaultApi.md#getusersvisualportfolio) | **GET** /Multiple/VisualPortfolio | Multiple Visual Portfolio

<a name="documentation-for-models"></a>
## Documentation for Models


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="apiKeyHeader"></a>
### apiKeyHeader

- **Type**: API key
- **API key parameter name**: Ocp-Apim-Subscription-Key
- **Location**: HTTP header

<a name="apiKeyQuery"></a>
### apiKeyQuery

- **Type**: API key
- **API key parameter name**: subscription-key
- **Location**: URL query string
