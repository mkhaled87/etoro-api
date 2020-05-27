# etoro_discovery.DefaultApi

All URIs are relative to *https://api.etoro.com/Discover/V1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_metadata**](DefaultApi.md#get_metadata) | **GET** /MetaData | MetaData
[**get_search**](DefaultApi.md#get_search) | **GET** /Search | Search

# **get_metadata**
> get_metadata()

MetaData

The discovery metadata API returns the values which can be queried

### Example
```python
from __future__ import print_function
import time
import etoro_discovery
from etoro_discovery.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_discovery.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_discovery.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_discovery.DefaultApi(etoro_discovery.ApiClient(configuration))

try:
    # MetaData
    api_instance.get_metadata()
except ApiException as e:
    print("Exception when calling DefaultApi->get_metadata: %s\n" % e)
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

# **get_search**
> get_search(period, page=page, page_size=page_size, sort=sort, fields=fields)

Search

The search API allows you to filter customers according to periodic aggregate data. For a full explanation on the mechanics of filtering, ordering and paging, see <a href=\"/discovery-filtering\">this blog post</a>

### Example
```python
from __future__ import print_function
import time
import etoro_discovery
from etoro_discovery.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_discovery.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_discovery.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_discovery.DefaultApi(etoro_discovery.ApiClient(configuration))
period = 'SixMonthsAgo' # str | The requested period (default to SixMonthsAgo)
page = 1.2 # float | The requested page number. Defaults to 1 (optional)
page_size = 1.2 # float | The requested page size (optional)
sort = 'sort_example' # str | The requested sort. Sorting may be applied to multiple columns. For descending order a '-' prefix should be used. (optional)
fields = 'fields_example' # str | A comma delimited list of fields which should be returned (optional)

try:
    # Search
    api_instance.get_search(period, page=page, page_size=page_size, sort=sort, fields=fields)
except ApiException as e:
    print("Exception when calling DefaultApi->get_search: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **str**| The requested period | [default to SixMonthsAgo]
 **page** | **float**| The requested page number. Defaults to 1 | [optional] 
 **page_size** | **float**| The requested page size | [optional] 
 **sort** | **str**| The requested sort. Sorting may be applied to multiple columns. For descending order a &#x27;-&#x27; prefix should be used. | [optional] 
 **fields** | **str**| A comma delimited list of fields which should be returned | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

