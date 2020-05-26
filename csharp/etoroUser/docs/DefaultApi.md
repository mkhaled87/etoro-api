# IO.Swagger.Api.DefaultApi

All URIs are relative to *https://api.etoro.com/API/User/V1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAggregatesHistory**](DefaultApi.md#getaggregateshistory) | **GET** /{Username}/Trade/History/Aggregates | Trade/History/Aggregates
[**GetCopiersHistory**](DefaultApi.md#getcopiershistory) | **GET** /{Username}/Copiers/History | Copiers/History
[**GetCopySimulationData**](DefaultApi.md#getcopysimulationdata) | **GET** /{Username}/CopySimulation | CopySimulation
[**GetDailyGain**](DefaultApi.md#getdailygain) | **GET** /{Username}/DailyGain | Daily Gain
[**GetGains**](DefaultApi.md#getgains) | **GET** /{Username}/Gain | Monthly Gain
[**GetLiveCopiers**](DefaultApi.md#getlivecopiers) | **GET** /{Username}/Copiers/Live | Copiers/Live
[**GetLiveRiskScore**](DefaultApi.md#getliveriskscore) | **GET** /{Username}/RiskScore/Live/ | RiskScore/Live
[**GetRiskHistory**](DefaultApi.md#getriskhistory) | **GET** /{Username}/RiskScore/History | RiskScore/History
[**GetUserDiscoveryData**](DefaultApi.md#getuserdiscoverydata) | **GET** /{Username}/Discovery | Discovery
[**GetUserFollowers**](DefaultApi.md#getuserfollowers) | **GET** /{Username}/Social/Followers | Social/Followers
[**GetUserInfo**](DefaultApi.md#getuserinfo) | **GET** /{Username}/Info | Info
[**GetUserPortfolioSummary**](DefaultApi.md#getuserportfoliosummary) | **GET** /{Username}/PortfolioSummary | PortfolioSummary
[**GetUserVisualPortfolio**](DefaultApi.md#getuservisualportfolio) | **GET** /{Username}/VisualPortfolio | VisualPortfolio
[**GetUsersDiscoveryData**](DefaultApi.md#getusersdiscoverydata) | **GET** /Multiple/Discovery | Multiple Discovery
[**GetUsersInfo**](DefaultApi.md#getusersinfo) | **GET** /Multiple/Info | Multiple Info
[**GetUsersVisualPortfolio**](DefaultApi.md#getusersvisualportfolio) | **GET** /Multiple/VisualPortfolio | Multiple Visual Portfolio

<a name="getaggregateshistory"></a>
# **GetAggregatesHistory**
> void GetAggregatesHistory (string username, string period = null)

Trade/History/Aggregates

The trading history aggregates retrieves aggregate data on the trading of a customer

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetAggregatesHistoryExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username which we want to get the aggregate data on | 
 **period** | **string**| The name of the period which we would like to get aggregate data on. The possible values are according to the period name in the metadata &lt;a href&#x3D;\&quot;docs/services/5784e8446361c811ccfdf536/operations/578501516361c811ccfdf53c\&quot;&gt;StatsPeriods API&lt;/a&gt; | [optional] [default to SixMonthsAgo]

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getcopiershistory"></a>
# **GetCopiersHistory**
> void GetCopiersHistory (string username, string minDate = null)

Copiers/History

The API returns the daily number of copiers of a user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetCopiersHistoryExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | The username which I would like to get the copier history
            var minDate = minDate_example;  // string | The minimum date for the response. The date should be formatted as YYYY/MM/DD (optional) 

            try
            {
                // Copiers/History
                apiInstance.GetCopiersHistory(username, minDate);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetCopiersHistory: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username which I would like to get the copier history | 
 **minDate** | **string**| The minimum date for the response. The date should be formatted as YYYY/MM/DD | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getcopysimulationdata"></a>
# **GetCopySimulationData**
> void GetCopySimulationData (string username, string period, bool? assetAllocation = null)

CopySimulation

The copy simulation retrieves periodic copy simulation data including daily equity and optional daily asset allocation

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetCopySimulationDataExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | The username to simulate
            var period = period_example;  // string | The name of the period which we would like to get simulation data on. The possible values are according to the period name in the metadata <a href=\"docs/services/5784e8446361c811ccfdf536/operations/578501516361c811ccfdf53c\">StatsPeriods API</a> (default to SixMonthsAgo)
            var assetAllocation = true;  // bool? | Return information on daily asset allocation (optional) 

            try
            {
                // CopySimulation
                apiInstance.GetCopySimulationData(username, period, assetAllocation);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetCopySimulationData: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username to simulate | 
 **period** | **string**| The name of the period which we would like to get simulation data on. The possible values are according to the period name in the metadata &lt;a href&#x3D;\&quot;docs/services/5784e8446361c811ccfdf536/operations/578501516361c811ccfdf53c\&quot;&gt;StatsPeriods API&lt;/a&gt; | [default to SixMonthsAgo]
 **assetAllocation** | **bool?**| Return information on daily asset allocation | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getdailygain"></a>
# **GetDailyGain**
> void GetDailyGain (string username, string type, string minDate, string maxDate)

Daily Gain

The Daily Gain API provides daily gains of users either as a time series or an aggregation

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetDailyGainExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | The username which we would like to get the gain information
            var type = type_example;  // string | Type of data returned (default to Daily)
            var minDate = minDate_example;  // string | The minimum date of the query. The date should be formatted as YYYY-MM-DD
            var maxDate = maxDate_example;  // string | The maximum date of the query. The date should be formatted as YYYY-MM-DD

            try
            {
                // Daily Gain
                apiInstance.GetDailyGain(username, type, minDate, maxDate);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetDailyGain: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username which we would like to get the gain information | 
 **type** | **string**| Type of data returned | [default to Daily]
 **minDate** | **string**| The minimum date of the query. The date should be formatted as YYYY-MM-DD | 
 **maxDate** | **string**| The maximum date of the query. The date should be formatted as YYYY-MM-DD | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getgains"></a>
# **GetGains**
> void GetGains (string username)

Monthly Gain

This API retrieves the monthly and yearly gains of a user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetGainsExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | The username which we would like to get the gain information

            try
            {
                // Monthly Gain
                apiInstance.GetGains(username);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetGains: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username which we would like to get the gain information | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getlivecopiers"></a>
# **GetLiveCopiers**
> void GetLiveCopiers (string username)

Copiers/Live

This API returns the number of live copiers by country

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetLiveCopiersExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | The username which we are trying to get the copiers

            try
            {
                // Copiers/Live
                apiInstance.GetLiveCopiers(username);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetLiveCopiers: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username which we are trying to get the copiers | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getliveriskscore"></a>
# **GetLiveRiskScore**
> void GetLiveRiskScore (string username)

RiskScore/Live

The Risk Score Live API call returns data on the live customer risk score

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetLiveRiskScoreExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | The username which we would like to get the risk score information

            try
            {
                // RiskScore/Live
                apiInstance.GetLiveRiskScore(username);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetLiveRiskScore: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username which we would like to get the risk score information | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getriskhistory"></a>
# **GetRiskHistory**
> void GetRiskHistory (string username, string minDate = null)

RiskScore/History

This API retrieves the historical risk score of a customer

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetRiskHistoryExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | The username which we would like to get the risk score information
            var minDate = minDate_example;  // string | The minimum date to return information (optional) 

            try
            {
                // RiskScore/History
                apiInstance.GetRiskHistory(username, minDate);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetRiskHistory: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username which we would like to get the risk score information | 
 **minDate** | **string**| The minimum date to return information | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getuserdiscoverydata"></a>
# **GetUserDiscoveryData**
> void GetUserDiscoveryData (string username, string period = null)

Discovery

The API returns discovery values for a specific user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserDiscoveryDataExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | 
            var period = period_example;  // string | Requested Period (optional)  (default to SixMonthsAgo)

            try
            {
                // Discovery
                apiInstance.GetUserDiscoveryData(username, period);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetUserDiscoveryData: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**|  | 
 **period** | **string**| Requested Period | [optional] [default to SixMonthsAgo]

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getuserfollowers"></a>
# **GetUserFollowers**
> void GetUserFollowers (string username)

Social/Followers

The API returns the number of followers of a user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserFollowersExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | The username which we want to query

            try
            {
                // Social/Followers
                apiInstance.GetUserFollowers(username);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetUserFollowers: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username which we want to query | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getuserinfo"></a>
# **GetUserInfo**
> void GetUserInfo (string username)

Info

This API returns general information on a user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserInfoExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | The username which we would like to get the information

            try
            {
                // Info
                apiInstance.GetUserInfo(username);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetUserInfo: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username which we would like to get the information | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getuserportfoliosummary"></a>
# **GetUserPortfolioSummary**
> void GetUserPortfolioSummary (string username)

PortfolioSummary

The portfolio summary aggregates the live portfolio of a user by manually traded assets and all the social trades he has open

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserPortfolioSummaryExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | The requested username

            try
            {
                // PortfolioSummary
                apiInstance.GetUserPortfolioSummary(username);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetUserPortfolioSummary: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The requested username | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getuservisualportfolio"></a>
# **GetUserVisualPortfolio**
> void GetUserVisualPortfolio (string username, decimal? top)

VisualPortfolio

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserVisualPortfolioExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var username = username_example;  // string | The requested username
            var top = 1.2;  // decimal? | The number of results to return

            try
            {
                // VisualPortfolio
                apiInstance.GetUserVisualPortfolio(username, top);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetUserVisualPortfolio: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The requested username | 
 **top** | **decimal?**| The number of results to return | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getusersdiscoverydata"></a>
# **GetUsersDiscoveryData**
> void GetUsersDiscoveryData (string usernames, string period, string fields = null)

Multiple Discovery

This API returns discovery values for multiple users

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUsersDiscoveryDataExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var usernames = usernames_example;  // string | A comma delimited list of usernames which I would like to get discovery data
            var period = period_example;  // string | Requested Period (default to SixMonthsAgo)
            var fields = fields_example;  // string | A comma delimited list of fields which should be returned (optional) 

            try
            {
                // Multiple Discovery
                apiInstance.GetUsersDiscoveryData(usernames, period, fields);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetUsersDiscoveryData: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usernames** | **string**| A comma delimited list of usernames which I would like to get discovery data | 
 **period** | **string**| Requested Period | [default to SixMonthsAgo]
 **fields** | **string**| A comma delimited list of fields which should be returned | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getusersinfo"></a>
# **GetUsersInfo**
> void GetUsersInfo (string userNames = null)

Multiple Info

This API returns general information on a list of users

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUsersInfoExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var userNames = userNames_example;  // string | A comma delimited list of usernames (optional) 

            try
            {
                // Multiple Info
                apiInstance.GetUsersInfo(userNames);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetUsersInfo: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userNames** | **string**| A comma delimited list of usernames | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getusersvisualportfolio"></a>
# **GetUsersVisualPortfolio**
> void GetUsersVisualPortfolio (string userNames = null)

Multiple Visual Portfolio

This API returns the visual portfolio on a list of users

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUsersVisualPortfolioExample
    {
        public void main()
        {
            // Configure API key authorization: apiKeyHeader
            Configuration.Default.AddApiKey("Ocp-Apim-Subscription-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("Ocp-Apim-Subscription-Key", "Bearer");
            // Configure API key authorization: apiKeyQuery
            Configuration.Default.AddApiKey("subscription-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("subscription-key", "Bearer");

            var apiInstance = new DefaultApi();
            var userNames = userNames_example;  // string | A comma delimited list of usernames (optional) 

            try
            {
                // Multiple Visual Portfolio
                apiInstance.GetUsersVisualPortfolio(userNames);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetUsersVisualPortfolio: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userNames** | **string**| A comma delimited list of usernames | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
