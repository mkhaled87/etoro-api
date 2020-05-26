# IO.Swagger.Api.DefaultApi

All URIs are relative to *https://api.etoro.com/Metadata/V1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAssetClasses**](DefaultApi.md#getassetclasses) | **GET** /AssetClasses | AssetClasses
[**GetCandlePeriod**](DefaultApi.md#getcandleperiod) | **GET** /CandlePeriod | CandlePeriods
[**GetCountries**](DefaultApi.md#getcountries) | **GET** /Countries | Countries
[**GetExchanges**](DefaultApi.md#getexchanges) | **GET** /Exchanges | Exchanges
[**GetInstruments**](DefaultApi.md#getinstruments) | **GET** /Instruments | Instruments
[**GetSectors**](DefaultApi.md#getsectors) | **GET** /Sectors | Sectors
[**GetStatsPeriods**](DefaultApi.md#getstatsperiods) | **GET** /StatsPeriods | StatsPeriods

<a name="getassetclasses"></a>
# **GetAssetClasses**
> void GetAssetClasses ()

AssetClasses

<br> The API returns the asset classes of the system <br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetAssetClassesExample
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
                // AssetClasses
                apiInstance.GetAssetClasses();
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetAssetClasses: " + e.Message );
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
<a name="getcandleperiod"></a>
# **GetCandlePeriod**
> void GetCandlePeriod ()

CandlePeriods

The API returns the intervals in which you may retrieve historical price candles<br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetCandlePeriodExample
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
                // CandlePeriods
                apiInstance.GetCandlePeriod();
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetCandlePeriod: " + e.Message );
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
<a name="getcountries"></a>
# **GetCountries**
> void GetCountries ()

Countries

<br> The API returns a vector of all countries recognized in the system. Each member contains an internal country id, it's name and its abbreviation <br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetCountriesExample
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
                // Countries
                apiInstance.GetCountries();
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetCountries: " + e.Message );
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
<a name="getexchanges"></a>
# **GetExchanges**
> void GetExchanges ()

Exchanges

The API returns a vector of all the exchanges defined in the system.  <br><br> <b>Note</b> for the sake of compatibility while retrieving instruments, we will return asset classes (FX/CFD, etc.) as an exchange item. <br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetExchangesExample
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
                // Exchanges
                apiInstance.GetExchanges();
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetExchanges: " + e.Message );
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
<a name="getinstruments"></a>
# **GetInstruments**
> void GetInstruments (string instrumentIds = null)

Instruments

<br>The API returns the instruments which are defined in the system. <br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetInstrumentsExample
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
            var instrumentIds = instrumentIds_example;  // string | Comma separated list of instrument IDs which will be retrieved. If this is omitted all the instruments which are defined in the system will be returned (optional) 

            try
            {
                // Instruments
                apiInstance.GetInstruments(instrumentIds);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetInstruments: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instrumentIds** | **string**| Comma separated list of instrument IDs which will be retrieved. If this is omitted all the instruments which are defined in the system will be returned | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getsectors"></a>
# **GetSectors**
> void GetSectors ()

Sectors

<br> The API returns a vector of all the stock sectors in the system <br><br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetSectorsExample
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
                // Sectors
                apiInstance.GetSectors();
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetSectors: " + e.Message );
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
<a name="getstatsperiods"></a>
# **GetStatsPeriods**
> void GetStatsPeriods ()

StatsPeriods

The API returns the predefined periods used for aggregate data

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetStatsPeriodsExample
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
                // StatsPeriods
                apiInstance.GetStatsPeriods();
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetStatsPeriods: " + e.Message );
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
