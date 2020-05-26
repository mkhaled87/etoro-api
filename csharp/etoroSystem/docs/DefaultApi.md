# IO.Swagger.Api.DefaultApi

All URIs are relative to *https://api.etoro.com/System/V1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAutoComplete**](DefaultApi.md#getautocomplete) | **GET** /AutoComplete | Auto-Complete
[**GetDailyPriceChange**](DefaultApi.md#getdailypricechange) | **GET** /DailyPriceChange | Daily Price Change
[**GetInsights**](DefaultApi.md#getinsights) | **GET** /Insights/{InsightType} | Insights
[**GetMarketEvents**](DefaultApi.md#getmarketevents) | **GET** /MarketEvents | Market Events

<a name="getautocomplete"></a>
# **GetAutoComplete**
> void GetAutoComplete (string prefix, decimal? instrumentCount, decimal? userCount)

Auto-Complete

The auto-complete method allows you to create an \"auto-complete\" like widget with both users and instruments in the system

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetAutoCompleteExample
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
            var prefix = prefix_example;  // string | The search term you will be executing
            var instrumentCount = 1.2;  // decimal? | The number of instruments in the result set
            var userCount = 1.2;  // decimal? | The number of users in the result set

            try
            {
                // Auto-Complete
                apiInstance.GetAutoComplete(prefix, instrumentCount, userCount);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetAutoComplete: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefix** | **string**| The search term you will be executing | 
 **instrumentCount** | **decimal?**| The number of instruments in the result set | 
 **userCount** | **decimal?**| The number of users in the result set | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getdailypricechange"></a>
# **GetDailyPriceChange**
> void GetDailyPriceChange (string sort, decimal? page = null, decimal? pageSize = null)

Daily Price Change

The daily price change method shows the daily price change of the instruments in the system. 

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetDailyPriceChangeExample
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
            var sort = sort_example;  // string | The order of the response regarding the daily change (default to ASC)
            var page = 1.2;  // decimal? | The current page. If omitted the default will be the first page (optional) 
            var pageSize = 1.2;  // decimal? | The number of results in each page. If omitted, the page size will default to 20 (optional) 

            try
            {
                // Daily Price Change
                apiInstance.GetDailyPriceChange(sort, page, pageSize);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetDailyPriceChange: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **string**| The order of the response regarding the daily change | [default to ASC]
 **page** | **decimal?**| The current page. If omitted the default will be the first page | [optional] 
 **pageSize** | **decimal?**| The number of results in each page. If omitted, the page size will default to 20 | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getinsights"></a>
# **GetInsights**
> void GetInsights (string insightType, string instrumentIds = null)

Insights

The Insights method provides an insight on the trends inside the eToro system

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetInsightsExample
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
            var insightType = insightType_example;  // string | What type of insight we wish to see
            var instrumentIds = instrumentIds_example;  // string | Comma delimited string containing instrument ids which will be explicitly returned (optional) 

            try
            {
                // Insights
                apiInstance.GetInsights(insightType, instrumentIds);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetInsights: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **insightType** | **string**| What type of insight we wish to see | 
 **instrumentIds** | **string**| Comma delimited string containing instrument ids which will be explicitly returned | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getmarketevents"></a>
# **GetMarketEvents**
> void GetMarketEvents (string minDate = null, string maxDate = null, decimal? page = null, decimal? pageSize = null)

Market Events

The Market Events method returns information on significant market events. 

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetMarketEventsExample
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
            var minDate = minDate_example;  // string | Minimum date for events. In case it is omitted it will be 10 days (optional) 
            var maxDate = maxDate_example;  // string | Maximum date for events. In case it is missing the current timestamp will be used (optional) 
            var page = 1.2;  // decimal? | The current page. If omitted the default will by 1 (optional) 
            var pageSize = 1.2;  // decimal? | The pagesize. If omitted the default page size will be 10 (optional) 

            try
            {
                // Market Events
                apiInstance.GetMarketEvents(minDate, maxDate, page, pageSize);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetMarketEvents: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minDate** | **string**| Minimum date for events. In case it is omitted it will be 10 days | [optional] 
 **maxDate** | **string**| Maximum date for events. In case it is missing the current timestamp will be used | [optional] 
 **page** | **decimal?**| The current page. If omitted the default will by 1 | [optional] 
 **pageSize** | **decimal?**| The pagesize. If omitted the default page size will be 10 | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
