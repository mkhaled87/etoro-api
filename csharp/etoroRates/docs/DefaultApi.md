# IO.Swagger.Api.DefaultApi

All URIs are relative to *https://api.etoro.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetCandles**](DefaultApi.md#getcandles) | **GET** /History/Candles | History/Candles
[**GetClosingRate**](DefaultApi.md#getclosingrate) | **GET** /History/ClosingRate | History/ClosingRate
[**GetLiveRates**](DefaultApi.md#getliverates) | **GET** /Live | Live

<a name="getcandles"></a>
# **GetCandles**
> void GetCandles (decimal? candlePeriodId, decimal? instrumentID, decimal? top = null, string order = null)

History/Candles

<br>The History Candles API retrieves historical candles per instrument

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetCandlesExample
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
            var candlePeriodId = 1.2;  // decimal? | The internal ID of the candle interval. For the full values see the metadata <a href=\"/docs/services/5784e8446361c811ccfdf536/operations/5785c91b6361c80d884cfce9\">Candle Periods API</a>
            var instrumentID = 1.2;  // decimal? | The instrument ID which we want to retrieve the candles. For the full list of instruments see the metadata <a href=\"/docs/services/5784e8446361c811ccfdf536/operations/5784f6ee6361c811ccfdf53b\">Instruments API</a>
            var top = 1.2;  // decimal? | The number of candles to return. If omitted we will return 100 candles (optional) 
            var order = order_example;  // string | The order of the candles returned. If omitted it will be returned in a descending order (optional)  (default to DESC)

            try
            {
                // History/Candles
                apiInstance.GetCandles(candlePeriodId, instrumentID, top, order);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetCandles: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **candlePeriodId** | **decimal?**| The internal ID of the candle interval. For the full values see the metadata &lt;a href&#x3D;\&quot;/docs/services/5784e8446361c811ccfdf536/operations/5785c91b6361c80d884cfce9\&quot;&gt;Candle Periods API&lt;/a&gt; | 
 **instrumentID** | **decimal?**| The instrument ID which we want to retrieve the candles. For the full list of instruments see the metadata &lt;a href&#x3D;\&quot;/docs/services/5784e8446361c811ccfdf536/operations/5784f6ee6361c811ccfdf53b\&quot;&gt;Instruments API&lt;/a&gt; | 
 **top** | **decimal?**| The number of candles to return. If omitted we will return 100 candles | [optional] 
 **order** | **string**| The order of the candles returned. If omitted it will be returned in a descending order | [optional] [default to DESC]

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getclosingrate"></a>
# **GetClosingRate**
> void GetClosingRate (string instrumentIds = null)

History/ClosingRate

<br>The Closing Rate API returns the closing rates on a daily, weekly and monthly basis.<br> <li><b>Daily</b> The daily closing rate is updated when daily trading starts. For instruments which are traded 24 hours, the end of day is 17:00 US Eastern Time</li> <li><b>Weekly</b> The weekly closing price is updated before the opening of the trading week on Sunday 21:00 UTC</li> <li><b>Monthly</b> The monthly closing price is updated on the 1st of each month </li> <br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetClosingRateExample
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
            var instrumentIds = instrumentIds_example;  // string | A comma delimited list of instrument ids. For the full list of instrument IDs refer to the <a href=\"/docs/services/5784e8446361c811ccfdf536/operations/5784f6ee6361c811ccfdf53b\">Instruments API</a> (optional) 

            try
            {
                // History/ClosingRate
                apiInstance.GetClosingRate(instrumentIds);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetClosingRate: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instrumentIds** | **string**| A comma delimited list of instrument ids. For the full list of instrument IDs refer to the &lt;a href&#x3D;\&quot;/docs/services/5784e8446361c811ccfdf536/operations/5784f6ee6361c811ccfdf53b\&quot;&gt;Instruments API&lt;/a&gt; | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getliverates"></a>
# **GetLiveRates**
> void GetLiveRates (string instrumentIds = null)

Live

This API returns live rates

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetLiveRatesExample
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
            var instrumentIds = instrumentIds_example;  // string | A comma delimited list of instrument ids. For the full list of instrument IDs refer to the <a href=\"/docs/services/5784e8446361c811ccfdf536/operations/5784f6ee6361c811ccfdf53b\">Instruments API</a> (optional) 

            try
            {
                // Live
                apiInstance.GetLiveRates(instrumentIds);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetLiveRates: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instrumentIds** | **string**| A comma delimited list of instrument ids. For the full list of instrument IDs refer to the &lt;a href&#x3D;\&quot;/docs/services/5784e8446361c811ccfdf536/operations/5784f6ee6361c811ccfdf53b\&quot;&gt;Instruments API&lt;/a&gt; | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
