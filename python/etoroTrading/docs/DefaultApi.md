# swagger_client.DefaultApi

All URIs are relative to *https://api.etoro.com/API/Trading/V1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_exit_order**](DefaultApi.md#create_exit_order) | **POST** /ExitOrder/{System} | Exit Order&lt;span&gt; &lt;/span&gt;
[**delete_exit_order**](DefaultApi.md#delete_exit_order) | **DELETE** /ExitOrder/{System}/{OrderId} | Exit Order&lt;span&gt;&lt;/span&gt;
[**delete_order**](DefaultApi.md#delete_order) | **DELETE** /EntryOrder/{System}/{OrderId} | Entry Order&lt;span&gt;&lt;/span&gt;
[**do_login**](DefaultApi.md#do_login) | **POST** /Account/Login | Account
[**do_logout**](DefaultApi.md#do_logout) | **DELETE** /Account/Login | Account&lt;span&gt;&lt;/span&gt;  
[**edit_position**](DefaultApi.md#edit_position) | **PUT** /Trade/{System}/{PositionId} | Trade&lt;span&gt;&lt;/span&gt;
[**get_credit**](DefaultApi.md#get_credit) | **GET** /Credit/{System} | Credit
[**get_equity**](DefaultApi.md#get_equity) | **GET** /Equity/{System} | Equity
[**get_equity_history**](DefaultApi.md#get_equity_history) | **GET** /Equity/{System}/History/{Period} | Equity History
[**get_exit_orders**](DefaultApi.md#get_exit_orders) | **GET** /ExitOrder/{System} | Exit Order
[**get_fees**](DefaultApi.md#get_fees) | **GET** /Fees/{System} | Fees
[**get_instrument_metadata**](DefaultApi.md#get_instrument_metadata) | **GET** /Metadata/{System} | Metadata
[**get_orders**](DefaultApi.md#get_orders) | **GET** /EntryOrder/{System} | Entry Order
[**get_trade_history**](DefaultApi.md#get_trade_history) | **GET** /Trade/{System}/History | Trade History
[**get_trades**](DefaultApi.md#get_trades) | **GET** /Trade/{System} | Trade
[**place_order**](DefaultApi.md#place_order) | **POST** /EntryOrder/{System} | Entry Order&lt;span&gt; &lt;/span&gt;

# **create_exit_order**
> create_exit_order(system, body=body)

Exit Order<span> </span>

The Create Exit Order, will create an exit order in the system

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The system type where the data is requested from
body = NULL # object | The following is the structure of the body request

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

try:
    # Exit Order<span> </span>
    api_instance.create_exit_order(system, body=body)
except ApiException as e:
    print("Exception when calling DefaultApi->create_exit_order: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The system type where the data is requested from | 
 **body** | [**object**](object.md)| The following is the structure of the body request

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

# **delete_exit_order**
> delete_exit_order(system, order_id)

Exit Order<span></span>

The Delete Exit Order, will delete an existing exit order from the system

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The system type where the data is requested from
order_id = 1.2 # float | The exit order id

try:
    # Exit Order<span></span>
    api_instance.delete_exit_order(system, order_id)
except ApiException as e:
    print("Exception when calling DefaultApi->delete_exit_order: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The system type where the data is requested from | 
 **order_id** | **float**| The exit order id | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_order**
> delete_order(system, order_id, body=body)

Entry Order<span></span>

The Delete Entry Order allows cancellation of an entry order.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The system type where the data is requested from
order_id = 1.2 # float | The order id which we would like to delete
body = NULL # object | The body defines which order type to delete

<div class="panel">
<div class="row panel-body">
<div class="col-md-3"><label>OrderType</label></div>
<div class="col-md-1">string</div>
<div class="col-md-8">The order type can be either 'MKT' for market orders or 'LMT' for limit orders</div>
</div>

</div> (optional)

try:
    # Entry Order<span></span>
    api_instance.delete_order(system, order_id, body=body)
except ApiException as e:
    print("Exception when calling DefaultApi->delete_order: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The system type where the data is requested from | 
 **order_id** | **float**| The order id which we would like to delete | 
 **body** | [**object**](object.md)| The body defines which order type to delete

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

# **do_login**
> do_login()

Account

<br> The account login method provides the ability to login to the eToro system. <br><br> This operation is essential as it provides the credentials that are needed for subsequent API calls. The username and password are related to an account <br><br>

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))

try:
    # Account
    api_instance.do_login()
except ApiException as e:
    print("Exception when calling DefaultApi->do_login: %s\n" % e)
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

# **do_logout**
> do_logout(subscription_key=subscription_key)

Account<span></span>  

<br> The DELETE operation will perform a logoff from the account. <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
subscription_key = 'subscription_key_example' # str | subscription key in url (optional)

try:
    # Account<span></span>  
    api_instance.do_logout(subscription_key=subscription_key)
except ApiException as e:
    print("Exception when calling DefaultApi->do_logout: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_key** | **str**| subscription key in url | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_position**
> edit_position(system, position_id)

Trade<span></span>

Editing the trade allows changing the stop loss (rate + trailing property) and the stop loss

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The system which we will be using
position_id = 1.2 # float | The position ID which we would like to modify

try:
    # Trade<span></span>
    api_instance.edit_position(system, position_id)
except ApiException as e:
    print("Exception when calling DefaultApi->edit_position: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The system which we will be using | 
 **position_id** | **float**| The position ID which we would like to modify | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_credit**
> get_credit(system)

Credit

The Credit method returns the current credit in the user account <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The system type where the data is requested from

try:
    # Credit
    api_instance.get_credit(system)
except ApiException as e:
    print("Exception when calling DefaultApi->get_credit: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The system type where the data is requested from | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_equity**
> get_equity(system)

Equity

The Equity method returns the current equity in the user account <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The system type where the data is requested from

try:
    # Equity
    api_instance.get_equity(system)
except ApiException as e:
    print("Exception when calling DefaultApi->get_equity: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The system type where the data is requested from | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_equity_history**
> get_equity_history(system, period, min_date, max_date, username)

Equity History

The Historic equity method returns a time-series of the periodic equity of a user <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The system type where the data is requested from
period = 'period_example' # str | The Requested Period
min_date = 'min_date_example' # str | Minimum Date
max_date = 'max_date_example' # str | Maximum Date
username = 'username_example' # str | The requested username

try:
    # Equity History
    api_instance.get_equity_history(system, period, min_date, max_date, username)
except ApiException as e:
    print("Exception when calling DefaultApi->get_equity_history: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The system type where the data is requested from | 
 **period** | **str**| The Requested Period | 
 **min_date** | **str**| Minimum Date | 
 **max_date** | **str**| Maximum Date | 
 **username** | **str**| The requested username | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_exit_orders**
> get_exit_orders(system)

Exit Order

The Order returns all the open exit orders in the system <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The system type where the data is requested from

try:
    # Exit Order
    api_instance.get_exit_orders(system)
except ApiException as e:
    print("Exception when calling DefaultApi->get_exit_orders: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The system type where the data is requested from | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_fees**
> get_fees(system, instrument_ids=instrument_ids, ocp_apim_subscription_key=ocp_apim_subscription_key)

Fees

The Instruments fees returns the rollover fees that are charged in the system  <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The trading system. 
instrument_ids = 'instrument_ids_example' # str | Optional list of instrument ids. The list should be comma delimited (optional)
ocp_apim_subscription_key = 'ocp_apim_subscription_key_example' # str | subscription key in header (optional)

try:
    # Fees
    api_instance.get_fees(system, instrument_ids=instrument_ids, ocp_apim_subscription_key=ocp_apim_subscription_key)
except ApiException as e:
    print("Exception when calling DefaultApi->get_fees: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The trading system.  | 
 **instrument_ids** | **str**| Optional list of instrument ids. The list should be comma delimited | [optional] 
 **ocp_apim_subscription_key** | **str**| subscription key in header | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_instrument_metadata**
> get_instrument_metadata(system, instrument_ids=instrument_ids, subscription_key=subscription_key, ocp_apim_subscription_key=ocp_apim_subscription_key)

Metadata

The Instruments metadata returns the trading metadata on assets

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The trading system. 
instrument_ids = 'instrument_ids_example' # str | Optional list of instrument ids. The list should be comma delimited (optional)
subscription_key = 'subscription_key_example' # str | subscription key in url (optional)
ocp_apim_subscription_key = 'ocp_apim_subscription_key_example' # str | subscription key in header (optional)

try:
    # Metadata
    api_instance.get_instrument_metadata(system, instrument_ids=instrument_ids, subscription_key=subscription_key, ocp_apim_subscription_key=ocp_apim_subscription_key)
except ApiException as e:
    print("Exception when calling DefaultApi->get_instrument_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The trading system.  | 
 **instrument_ids** | **str**| Optional list of instrument ids. The list should be comma delimited | [optional] 
 **subscription_key** | **str**| subscription key in url | [optional] 
 **ocp_apim_subscription_key** | **str**| subscription key in header | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_orders**
> get_orders(system)

Entry Order

The Order returns all the open orders in the system <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The system type where the data is requested from

try:
    # Entry Order
    api_instance.get_orders(system)
except ApiException as e:
    print("Exception when calling DefaultApi->get_orders: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The system type where the data is requested from | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_trade_history**
> get_trade_history(system, min_date, page, page_size, ocp_apim_subscription_key=ocp_apim_subscription_key, x_token_=x_token_, x_csrf_token=x_csrf_token)

Trade History

The Trade History method returns closed trades of the user according to the system <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The system type where the data is requested from
min_date = 'min_date_example' # str | Minimum date for the historic trades
page = 56 # int | Requested Page
page_size = 56 # int | The number of values per pages which should be returned
ocp_apim_subscription_key = 'ocp_apim_subscription_key_example' # str | subscription key in header (optional)
x_token_ = 'x_token__example' # str | Security Token from Login Operation (optional)
x_csrf_token = 'x_csrf_token_example' # str | Security Token from Login Operation (optional)

try:
    # Trade History
    api_instance.get_trade_history(system, min_date, page, page_size, ocp_apim_subscription_key=ocp_apim_subscription_key, x_token_=x_token_, x_csrf_token=x_csrf_token)
except ApiException as e:
    print("Exception when calling DefaultApi->get_trade_history: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The system type where the data is requested from | 
 **min_date** | **str**| Minimum date for the historic trades | 
 **page** | **int**| Requested Page | 
 **page_size** | **int**| The number of values per pages which should be returned | 
 **ocp_apim_subscription_key** | **str**| subscription key in header | [optional] 
 **x_token_** | **str**| Security Token from Login Operation | [optional] 
 **x_csrf_token** | **str**| Security Token from Login Operation | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_trades**
> get_trades(system, subscription_key=subscription_key, ocp_apim_subscription_key=ocp_apim_subscription_key)

Trade

The Trade method returns the open trades of the user according to the system <br><br> It is important to note that the values of <span class=\"emph\">x-token</span> and <span class=\"emph\">x-csrf-token</span> must be sent as headers to this request. These values were returned from the <a href=\"https://api-portal.etoro.com/docs/services/58982f8b7dfd940ef4e0157d/operations/589831007dfd940ef4e0157e\">Account/Login <span class=\"badge badge-warning\">POST</span></a> command <br><br>

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The system type where the data is requested from
subscription_key = 'subscription_key_example' # str | subscription key in url (optional)
ocp_apim_subscription_key = 'ocp_apim_subscription_key_example' # str | subscription key in header (optional)

try:
    # Trade
    api_instance.get_trades(system, subscription_key=subscription_key, ocp_apim_subscription_key=ocp_apim_subscription_key)
except ApiException as e:
    print("Exception when calling DefaultApi->get_trades: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The system type where the data is requested from | 
 **subscription_key** | **str**| subscription key in url | [optional] 
 **ocp_apim_subscription_key** | **str**| subscription key in header | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **place_order**
> place_order(system, body=body)

Entry Order<span> </span>

The Add Entry Order allows creation of an entry order in the system. There are several types of orders which are available and are defined using the OrderType and ExecutionType parameters. <br><br> The OrderType parameter may be either Market (abbreviated by MKT) or Limit (abbreviated by LMT). <br><br> The ExecutionType can be either Good Till Cancelled (abbreviated by GTC) or Immediate or Cancel (abbreviated by IOC) 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = swagger_client.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = swagger_client.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
system = 'system_example' # str | The system type where the data is requested from
body = NULL # object | The body defines the actual order

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

try:
    # Entry Order<span> </span>
    api_instance.place_order(system, body=body)
except ApiException as e:
    print("Exception when calling DefaultApi->place_order: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system** | **str**| The system type where the data is requested from | 
 **body** | [**object**](object.md)| The body defines the actual order

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

