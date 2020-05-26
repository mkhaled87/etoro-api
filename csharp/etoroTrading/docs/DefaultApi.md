# IO.Swagger.Api.DefaultApi

All URIs are relative to *https://api.etoro.com/API/Trading/V1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateExitOrder**](DefaultApi.md#createexitorder) | **POST** /ExitOrder/{System} | Exit Order&lt;span&gt; &lt;/span&gt;
[**DeleteExitOrder**](DefaultApi.md#deleteexitorder) | **DELETE** /ExitOrder/{System}/{OrderId} | Exit Order&lt;span&gt;&lt;/span&gt;
[**DeleteOrder**](DefaultApi.md#deleteorder) | **DELETE** /EntryOrder/{System}/{OrderId} | Entry Order&lt;span&gt;&lt;/span&gt;
[**DoLogin**](DefaultApi.md#dologin) | **POST** /Account/Login | Account
[**DoLogout**](DefaultApi.md#dologout) | **DELETE** /Account/Login | Account&lt;span&gt;&lt;/span&gt;  
[**EditPosition**](DefaultApi.md#editposition) | **PUT** /Trade/{System}/{PositionId} | Trade&lt;span&gt;&lt;/span&gt;
[**GetCredit**](DefaultApi.md#getcredit) | **GET** /Credit/{System} | Credit
[**GetEquity**](DefaultApi.md#getequity) | **GET** /Equity/{System} | Equity
[**GetEquityHistory**](DefaultApi.md#getequityhistory) | **GET** /Equity/{System}/History/{Period} | Equity History
[**GetExitOrders**](DefaultApi.md#getexitorders) | **GET** /ExitOrder/{System} | Exit Order
[**GetFees**](DefaultApi.md#getfees) | **GET** /Fees/{System} | Fees
[**GetInstrumentMetadata**](DefaultApi.md#getinstrumentmetadata) | **GET** /Metadata/{System} | Metadata
[**GetOrders**](DefaultApi.md#getorders) | **GET** /EntryOrder/{System} | Entry Order
[**GetTradeHistory**](DefaultApi.md#gettradehistory) | **GET** /Trade/{System}/History | Trade History
[**GetTrades**](DefaultApi.md#gettrades) | **GET** /Trade/{System} | Trade
[**PlaceOrder**](DefaultApi.md#placeorder) | **POST** /EntryOrder/{System} | Entry Order&lt;span&gt; &lt;/span&gt;

<a name="createexitorder"></a>
# **CreateExitOrder**
> void CreateExitOrder (string system, Object body = null)

Exit Order<span> </span>

The Create Exit Order, will create an exit order in the system

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class CreateExitOrderExample
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
            var system = system_example;  // string | The system type where the data is requested from
            var body = new Object(); // Object | The following is the structure of the body request

<div class="panel">
<div class="row panel-body">
<div class="col-md-3"><label>PositionId</label></div>
<div class="col-md-1">number</div>
<div class="col-md-8">The position which I would like to close</div>
</div>
<div class="row panel-body">
<div class="col-md-3"><label>ExecutionType</label></div>
<div class="col-md-1">string</div>
<div class="col-md-8">The execution mode of the exit order. It can be either 'IOC' for immediate or cancel, or 'GTC' for good till cancelled</div>
</div>
</div>

<div class="row panel-body">
<div class="col-md-3"><label>Units</label></div>
<div class="col-md-1">string</div>
<div class="col-md-8">(Optional) Number of units to close</div>
</div>
</div>
 (optional) 

            try
            {
                // Exit Order<span> </span>
                apiInstance.CreateExitOrder(system, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.CreateExitOrder: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The system type where the data is requested from | 
 **body** | [**Object**](Object.md)| The following is the structure of the body request

&lt;div class&#x3D;&quot;panel&quot;&gt;
&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;PositionId&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;number&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The position which I would like to close&lt;/div&gt;
&lt;/div&gt;
&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;ExecutionType&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;string&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The execution mode of the exit order. It can be either &#x27;IOC&#x27; for immediate or cancel, or &#x27;GTC&#x27; for good till cancelled&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;

&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;Units&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;string&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;(Optional) Number of units to close&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
 | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="deleteexitorder"></a>
# **DeleteExitOrder**
> void DeleteExitOrder (string system, decimal? orderId)

Exit Order<span></span>

The Delete Exit Order, will delete an existing exit order from the system

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeleteExitOrderExample
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
            var system = system_example;  // string | The system type where the data is requested from
            var orderId = 1.2;  // decimal? | The exit order id

            try
            {
                // Exit Order<span></span>
                apiInstance.DeleteExitOrder(system, orderId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.DeleteExitOrder: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The system type where the data is requested from | 
 **orderId** | **decimal?**| The exit order id | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="deleteorder"></a>
# **DeleteOrder**
> void DeleteOrder (string system, decimal? orderId, Object body = null)

Entry Order<span></span>

The Delete Entry Order allows cancellation of an entry order.

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeleteOrderExample
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
            var system = system_example;  // string | The system type where the data is requested from
            var orderId = 1.2;  // decimal? | The order id which we would like to delete
            var body = new Object(); // Object | The body defines which order type to delete

<div class="panel">
<div class="row panel-body">
<div class="col-md-3"><label>OrderType</label></div>
<div class="col-md-1">string</div>
<div class="col-md-8">The order type can be either 'MKT' for market orders or 'LMT' for limit orders</div>
</div>

</div> (optional) 

            try
            {
                // Entry Order<span></span>
                apiInstance.DeleteOrder(system, orderId, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.DeleteOrder: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The system type where the data is requested from | 
 **orderId** | **decimal?**| The order id which we would like to delete | 
 **body** | [**Object**](Object.md)| The body defines which order type to delete

&lt;div class&#x3D;&quot;panel&quot;&gt;
&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;OrderType&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;string&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The order type can be either &#x27;MKT&#x27; for market orders or &#x27;LMT&#x27; for limit orders&lt;/div&gt;
&lt;/div&gt;

&lt;/div&gt; | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="dologin"></a>
# **DoLogin**
> void DoLogin ()

Account

<br> The account login method provides the ability to login to the eToro system. <br><br> This operation is essential as it provides the credentials that are needed for subsequent API calls. The username and password are related to an account <br><br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DoLoginExample
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
                // Account
                apiInstance.DoLogin();
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.DoLogin: " + e.Message );
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
<a name="dologout"></a>
# **DoLogout**
> void DoLogout (string subscriptionKey = null)

Account<span></span>  

<br> The DELETE operation will perform a logoff from the account. <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DoLogoutExample
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
            var subscriptionKey = subscriptionKey_example;  // string | subscription key in url (optional) 

            try
            {
                // Account<span></span>  
                apiInstance.DoLogout(subscriptionKey);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.DoLogout: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionKey** | **string**| subscription key in url | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="editposition"></a>
# **EditPosition**
> void EditPosition (string system, decimal? positionId)

Trade<span></span>

Editing the trade allows changing the stop loss (rate + trailing property) and the stop loss

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class EditPositionExample
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
            var system = system_example;  // string | The system which we will be using
            var positionId = 1.2;  // decimal? | The position ID which we would like to modify

            try
            {
                // Trade<span></span>
                apiInstance.EditPosition(system, positionId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.EditPosition: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The system which we will be using | 
 **positionId** | **decimal?**| The position ID which we would like to modify | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getcredit"></a>
# **GetCredit**
> void GetCredit (string system)

Credit

The Credit method returns the current credit in the user account <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetCreditExample
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
            var system = system_example;  // string | The system type where the data is requested from

            try
            {
                // Credit
                apiInstance.GetCredit(system);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetCredit: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The system type where the data is requested from | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getequity"></a>
# **GetEquity**
> void GetEquity (string system)

Equity

The Equity method returns the current equity in the user account <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetEquityExample
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
            var system = system_example;  // string | The system type where the data is requested from

            try
            {
                // Equity
                apiInstance.GetEquity(system);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetEquity: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The system type where the data is requested from | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getequityhistory"></a>
# **GetEquityHistory**
> void GetEquityHistory (string system, string period, string minDate, string maxDate, string username)

Equity History

The Historic equity method returns a time-series of the periodic equity of a user <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetEquityHistoryExample
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
            var system = system_example;  // string | The system type where the data is requested from
            var period = period_example;  // string | The Requested Period
            var minDate = minDate_example;  // string | Minimum Date
            var maxDate = maxDate_example;  // string | Maximum Date
            var username = username_example;  // string | The requested username

            try
            {
                // Equity History
                apiInstance.GetEquityHistory(system, period, minDate, maxDate, username);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetEquityHistory: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The system type where the data is requested from | 
 **period** | **string**| The Requested Period | 
 **minDate** | **string**| Minimum Date | 
 **maxDate** | **string**| Maximum Date | 
 **username** | **string**| The requested username | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getexitorders"></a>
# **GetExitOrders**
> void GetExitOrders (string system)

Exit Order

The Order returns all the open exit orders in the system <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetExitOrdersExample
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
            var system = system_example;  // string | The system type where the data is requested from

            try
            {
                // Exit Order
                apiInstance.GetExitOrders(system);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetExitOrders: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The system type where the data is requested from | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getfees"></a>
# **GetFees**
> void GetFees (string system, string instrumentIds = null, string ocpApimSubscriptionKey = null)

Fees

The Instruments fees returns the rollover fees that are charged in the system  <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetFeesExample
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
            var system = system_example;  // string | The trading system. 
            var instrumentIds = instrumentIds_example;  // string | Optional list of instrument ids. The list should be comma delimited (optional) 
            var ocpApimSubscriptionKey = ocpApimSubscriptionKey_example;  // string | subscription key in header (optional) 

            try
            {
                // Fees
                apiInstance.GetFees(system, instrumentIds, ocpApimSubscriptionKey);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetFees: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The trading system.  | 
 **instrumentIds** | **string**| Optional list of instrument ids. The list should be comma delimited | [optional] 
 **ocpApimSubscriptionKey** | **string**| subscription key in header | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getinstrumentmetadata"></a>
# **GetInstrumentMetadata**
> void GetInstrumentMetadata (string system, string instrumentIds = null, string subscriptionKey = null, string ocpApimSubscriptionKey = null)

Metadata

The Instruments metadata returns the trading metadata on assets

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetInstrumentMetadataExample
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
            var system = system_example;  // string | The trading system. 
            var instrumentIds = instrumentIds_example;  // string | Optional list of instrument ids. The list should be comma delimited (optional) 
            var subscriptionKey = subscriptionKey_example;  // string | subscription key in url (optional) 
            var ocpApimSubscriptionKey = ocpApimSubscriptionKey_example;  // string | subscription key in header (optional) 

            try
            {
                // Metadata
                apiInstance.GetInstrumentMetadata(system, instrumentIds, subscriptionKey, ocpApimSubscriptionKey);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetInstrumentMetadata: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The trading system.  | 
 **instrumentIds** | **string**| Optional list of instrument ids. The list should be comma delimited | [optional] 
 **subscriptionKey** | **string**| subscription key in url | [optional] 
 **ocpApimSubscriptionKey** | **string**| subscription key in header | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getorders"></a>
# **GetOrders**
> void GetOrders (string system)

Entry Order

The Order returns all the open orders in the system <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetOrdersExample
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
            var system = system_example;  // string | The system type where the data is requested from

            try
            {
                // Entry Order
                apiInstance.GetOrders(system);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetOrders: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The system type where the data is requested from | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="gettradehistory"></a>
# **GetTradeHistory**
> void GetTradeHistory (string system, string minDate, int? page, int? pageSize, string ocpApimSubscriptionKey = null, string xToken_ = null, string xCsrfToken = null)

Trade History

The Trade History method returns closed trades of the user according to the system <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetTradeHistoryExample
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
            var system = system_example;  // string | The system type where the data is requested from
            var minDate = minDate_example;  // string | Minimum date for the historic trades
            var page = 56;  // int? | Requested Page
            var pageSize = 56;  // int? | The number of values per pages which should be returned
            var ocpApimSubscriptionKey = ocpApimSubscriptionKey_example;  // string | subscription key in header (optional) 
            var xToken_ = xToken__example;  // string | Security Token from Login Operation (optional) 
            var xCsrfToken = xCsrfToken_example;  // string | Security Token from Login Operation (optional) 

            try
            {
                // Trade History
                apiInstance.GetTradeHistory(system, minDate, page, pageSize, ocpApimSubscriptionKey, xToken_, xCsrfToken);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetTradeHistory: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The system type where the data is requested from | 
 **minDate** | **string**| Minimum date for the historic trades | 
 **page** | **int?**| Requested Page | 
 **pageSize** | **int?**| The number of values per pages which should be returned | 
 **ocpApimSubscriptionKey** | **string**| subscription key in header | [optional] 
 **xToken_** | **string**| Security Token from Login Operation | [optional] 
 **xCsrfToken** | **string**| Security Token from Login Operation | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="gettrades"></a>
# **GetTrades**
> void GetTrades (string system, string subscriptionKey = null, string ocpApimSubscriptionKey = null)

Trade

The Trade method returns the open trades of the user according to the system <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetTradesExample
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
            var system = system_example;  // string | The system type where the data is requested from
            var subscriptionKey = subscriptionKey_example;  // string | subscription key in url (optional) 
            var ocpApimSubscriptionKey = ocpApimSubscriptionKey_example;  // string | subscription key in header (optional) 

            try
            {
                // Trade
                apiInstance.GetTrades(system, subscriptionKey, ocpApimSubscriptionKey);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetTrades: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The system type where the data is requested from | 
 **subscriptionKey** | **string**| subscription key in url | [optional] 
 **ocpApimSubscriptionKey** | **string**| subscription key in header | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="placeorder"></a>
# **PlaceOrder**
> void PlaceOrder (string system, Object body = null)

Entry Order<span> </span>

The Add Entry Order allows creation of an entry order in the system. There are several types of orders which are available and are defined using the OrderType and ExecutionType parameters. <br><br> The OrderType parameter may be either Market (abbreviated by MKT) or Limit (abbreviated by LMT). <br><br> The ExecutionType can be either Good Till Cancelled (abbreviated by GTC) or Immediate or Cancel (abbreviated by IOC) 

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PlaceOrderExample
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
            var system = system_example;  // string | The system type where the data is requested from
            var body = new Object(); // Object | The body defines the actual order

<div class="panel">
<div class="row panel-body">
<div class="col-md-3"><label>InstrumentID</label></div>
<div class="col-md-1">number</div>
<div class="col-md-8">The Instrument ID on which the order references</div>
</div>

<div class="row panel-body">
<div class="col-md-3"><label>IsBuy</label></div>
<div class="col-md-1">boolean</div>
<div class="col-md-8">Is the opened position on the buy or sell side</div>
</div>
<div class="row panel-body">
<div class="col-md-3"><label>Leverage</label></div>
<div class="col-md-1">number</div>
<div class="col-md-8">The requested leverage</div>
</div>
<div class="row panel-body">
<div class="col-md-3"><label>Investment</label></div>
<div class="col-md-1">number</div>
<div class="col-md-8">The invested amount for the order</div>
</div>

<div class="row panel-body">
<div class="col-md-3"><label>Units</label></div>
<div class="col-md-1">number</div>
<div class="col-md-8">The number of units to buy (either this or the investment are mandatory)</div>
</div>


<div class="row panel-body">
<div class="col-md-3"><label>OrderType</label></div>
<div class="col-md-1">string</div>
<div class="col-md-8">The order type can be either 'MKT' for market orders or 'LMT' for limit orders</div>
</div>
<div class="row panel-body">
<div class="col-md-3"><label>ExecutionType</label></div>
<div class="col-md-1">string</div>
<div class="col-md-8">The execution type can be either 'GTC' for good till cancel orders, or 'IOC' for immediate of cancel orders</div>
</div>
<div class="row panel-body">
<div class="col-md-3"><label>StopLossRate</label><span class="text-muted">(optional)</span></div>
<div class="col-md-1">number</div>
<div class="col-md-8">The stop loss rate for the position. This property is mandatory for limit orders and market orders which are immediate or cancel</div>
</div>
<div class="row panel-body">
<div class="col-md-3"><label>TakeProfitRate</label><span class="text-muted">(optional)</span></div>
<div class="col-md-1">number</div>
<div class="col-md-8">The take profit rate for the position. This property is mandatory for limit orders and market orders which are immediate or cancel</div>
</div>

<div class="row panel-body">
<div class="col-md-3"><label>StopLossPct</label><span class="text-muted">(optional)</span></div>
<div class="col-md-1">number</div>
<div class="col-md-8">The stop loss percentage for the position. This is mandatory for market orders which are good till cancelled MKT/GTC</div>
</div>
<div class="row panel-body">
<div class="col-md-3"><label>TakeProfitPct</label><span class="text-muted">(optional)</span></div>
<div class="col-md-1">number</div>
<div class="col-md-8">The take profit percentage for the position. This is mandatory for market orders which are good till cancelled MKT/GTC</div>
</div>
<div class="row panel-body">
<div class="col-md-3"><label>LimitRate</label></div>
<div class="col-md-1">number</div>
<div class="col-md-8">The limit rate. This is relevant for limit orders LMT/GTC</div>
</div>
<div class="row panel-body">
<div class="col-md-3"><label>IsTrailingStopLoss</label></div>
<div class="col-md-1">boolean</div>
<div class="col-md-8">Should the trade be opened with a trailing stop loss</div>
</div>

</div> (optional) 

            try
            {
                // Entry Order<span> </span>
                apiInstance.PlaceOrder(system, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.PlaceOrder: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **string**| The system type where the data is requested from | 
 **body** | [**Object**](Object.md)| The body defines the actual order

&lt;div class&#x3D;&quot;panel&quot;&gt;
&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;InstrumentID&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;number&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The Instrument ID on which the order references&lt;/div&gt;
&lt;/div&gt;

&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;IsBuy&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;boolean&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;Is the opened position on the buy or sell side&lt;/div&gt;
&lt;/div&gt;
&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;Leverage&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;number&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The requested leverage&lt;/div&gt;
&lt;/div&gt;
&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;Investment&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;number&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The invested amount for the order&lt;/div&gt;
&lt;/div&gt;

&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;Units&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;number&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The number of units to buy (either this or the investment are mandatory)&lt;/div&gt;
&lt;/div&gt;


&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;OrderType&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;string&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The order type can be either &#x27;MKT&#x27; for market orders or &#x27;LMT&#x27; for limit orders&lt;/div&gt;
&lt;/div&gt;
&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;ExecutionType&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;string&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The execution type can be either &#x27;GTC&#x27; for good till cancel orders, or &#x27;IOC&#x27; for immediate of cancel orders&lt;/div&gt;
&lt;/div&gt;
&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;StopLossRate&lt;/label&gt;&lt;span class&#x3D;&quot;text-muted&quot;&gt;(optional)&lt;/span&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;number&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The stop loss rate for the position. This property is mandatory for limit orders and market orders which are immediate or cancel&lt;/div&gt;
&lt;/div&gt;
&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;TakeProfitRate&lt;/label&gt;&lt;span class&#x3D;&quot;text-muted&quot;&gt;(optional)&lt;/span&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;number&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The take profit rate for the position. This property is mandatory for limit orders and market orders which are immediate or cancel&lt;/div&gt;
&lt;/div&gt;

&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;StopLossPct&lt;/label&gt;&lt;span class&#x3D;&quot;text-muted&quot;&gt;(optional)&lt;/span&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;number&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The stop loss percentage for the position. This is mandatory for market orders which are good till cancelled MKT/GTC&lt;/div&gt;
&lt;/div&gt;
&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;TakeProfitPct&lt;/label&gt;&lt;span class&#x3D;&quot;text-muted&quot;&gt;(optional)&lt;/span&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;number&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The take profit percentage for the position. This is mandatory for market orders which are good till cancelled MKT/GTC&lt;/div&gt;
&lt;/div&gt;
&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;LimitRate&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;number&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;The limit rate. This is relevant for limit orders LMT/GTC&lt;/div&gt;
&lt;/div&gt;
&lt;div class&#x3D;&quot;row panel-body&quot;&gt;
&lt;div class&#x3D;&quot;col-md-3&quot;&gt;&lt;label&gt;IsTrailingStopLoss&lt;/label&gt;&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-1&quot;&gt;boolean&lt;/div&gt;
&lt;div class&#x3D;&quot;col-md-8&quot;&gt;Should the trade be opened with a trailing stop loss&lt;/div&gt;
&lt;/div&gt;

&lt;/div&gt; | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
