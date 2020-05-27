# etoro_system.DefaultApi

All URIs are relative to *https://api.etoro.com/System/V1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_auto_complete**](DefaultApi.md#get_auto_complete) | **GET** /AutoComplete | Auto-Complete
[**get_daily_price_change**](DefaultApi.md#get_daily_price_change) | **GET** /DailyPriceChange | Daily Price Change
[**get_insights**](DefaultApi.md#get_insights) | **GET** /Insights/{InsightType} | Insights
[**get_market_events**](DefaultApi.md#get_market_events) | **GET** /MarketEvents | Market Events

# **get_auto_complete**
> get_auto_complete(prefix, instrument_count, user_count)

Auto-Complete

The auto-complete method allows you to create an \"auto-complete\" like widget with both users and instruments in the system

### Example
```python
from __future__ import print_function
import time
import etoro_system
from etoro_system.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_system.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_system.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_system.DefaultApi(etoro_system.ApiClient(configuration))
prefix = 'prefix_example' # str | The search term you will be executing
instrument_count = 1.2 # float | The number of instruments in the result set
user_count = 1.2 # float | The number of users in the result set

try:
    # Auto-Complete
    api_instance.get_auto_complete(prefix, instrument_count, user_count)
except ApiException as e:
    print("Exception when calling DefaultApi->get_auto_complete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefix** | **str**| The search term you will be executing | 
 **instrument_count** | **float**| The number of instruments in the result set | 
 **user_count** | **float**| The number of users in the result set | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_daily_price_change**
> get_daily_price_change(sort, page=page, page_size=page_size)

Daily Price Change

The daily price change method shows the daily price change of the instruments in the system. 

### Example
```python
from __future__ import print_function
import time
import etoro_system
from etoro_system.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_system.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_system.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_system.DefaultApi(etoro_system.ApiClient(configuration))
sort = 'ASC' # str | The order of the response regarding the daily change (default to ASC)
page = 1.2 # float | The current page. If omitted the default will be the first page (optional)
page_size = 1.2 # float | The number of results in each page. If omitted, the page size will default to 20 (optional)

try:
    # Daily Price Change
    api_instance.get_daily_price_change(sort, page=page, page_size=page_size)
except ApiException as e:
    print("Exception when calling DefaultApi->get_daily_price_change: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **str**| The order of the response regarding the daily change | [default to ASC]
 **page** | **float**| The current page. If omitted the default will be the first page | [optional] 
 **page_size** | **float**| The number of results in each page. If omitted, the page size will default to 20 | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_insights**
> get_insights(insight_type, instrument_ids=instrument_ids)

Insights

The Insights method provides an insight on the trends inside the eToro system

### Example
```python
from __future__ import print_function
import time
import etoro_system
from etoro_system.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_system.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_system.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_system.DefaultApi(etoro_system.ApiClient(configuration))
insight_type = 'insight_type_example' # str | What type of insight we wish to see
instrument_ids = 'instrument_ids_example' # str | Comma delimited string containing instrument ids which will be explicitly returned (optional)

try:
    # Insights
    api_instance.get_insights(insight_type, instrument_ids=instrument_ids)
except ApiException as e:
    print("Exception when calling DefaultApi->get_insights: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **insight_type** | **str**| What type of insight we wish to see | 
 **instrument_ids** | **str**| Comma delimited string containing instrument ids which will be explicitly returned | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_market_events**
> get_market_events(min_date=min_date, max_date=max_date, page=page, page_size=page_size)

Market Events

The Market Events method returns information on significant market events. 

### Example
```python
from __future__ import print_function
import time
import etoro_system
from etoro_system.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_system.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_system.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_system.DefaultApi(etoro_system.ApiClient(configuration))
min_date = 'min_date_example' # str | Minimum date for events. In case it is omitted it will be 10 days (optional)
max_date = 'max_date_example' # str | Maximum date for events. In case it is missing the current timestamp will be used (optional)
page = 1.2 # float | The current page. If omitted the default will by 1 (optional)
page_size = 1.2 # float | The pagesize. If omitted the default page size will be 10 (optional)

try:
    # Market Events
    api_instance.get_market_events(min_date=min_date, max_date=max_date, page=page, page_size=page_size)
except ApiException as e:
    print("Exception when calling DefaultApi->get_market_events: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_date** | **str**| Minimum date for events. In case it is omitted it will be 10 days | [optional] 
 **max_date** | **str**| Maximum date for events. In case it is missing the current timestamp will be used | [optional] 
 **page** | **float**| The current page. If omitted the default will by 1 | [optional] 
 **page_size** | **float**| The pagesize. If omitted the default page size will be 10 | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

