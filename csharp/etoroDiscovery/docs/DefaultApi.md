# IO.Swagger.Api.DefaultApi

All URIs are relative to *https://api.etoro.com/Discover/V1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetMetadata**](DefaultApi.md#getmetadata) | **GET** /MetaData | MetaData
[**GetSearch**](DefaultApi.md#getsearch) | **GET** /Search | Search

<a name="getmetadata"></a>
# **GetMetadata**
> void GetMetadata ()

MetaData

The discovery metadata API returns the values which can be queried

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetMetadataExample
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

            try
            {
                // MetaData
                apiInstance.GetMetadata();
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetMetadata: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getsearch"></a>
# **GetSearch**
> void GetSearch (string period, decimal? page = null, decimal? pageSize = null, string sort = null, string fields = null)

Search

The search API allows you to filter customers according to periodic aggregate data. For a full explanation on the mechanics of filtering, ordering and paging, see <a href=\"/discovery-filtering\">this blog post</a>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetSearchExample
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
            var period = period_example;  // string | The requested period (default to SixMonthsAgo)
            var page = 1.2;  // decimal? | The requested page number. Defaults to 1 (optional) 
            var pageSize = 1.2;  // decimal? | The requested page size (optional) 
            var sort = sort_example;  // string | The requested sort. Sorting may be applied to multiple columns. For descending order a '-' prefix should be used. (optional) 
            var fields = fields_example;  // string | A comma delimited list of fields which should be returned (optional) 

            try
            {
                // Search
                apiInstance.GetSearch(period, page, pageSize, sort, fields);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetSearch: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **string**| The requested period | [default to SixMonthsAgo]
 **page** | **decimal?**| The requested page number. Defaults to 1 | [optional] 
 **pageSize** | **decimal?**| The requested page size | [optional] 
 **sort** | **string**| The requested sort. Sorting may be applied to multiple columns. For descending order a &#x27;-&#x27; prefix should be used. | [optional] 
 **fields** | **string**| A comma delimited list of fields which should be returned | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
