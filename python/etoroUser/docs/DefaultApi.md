# etoro_api.DefaultApi

All URIs are relative to *https://api.etoro.com/API/User/V1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_aggregates_history**](DefaultApi.md#get_aggregates_history) | **GET** /{Username}/Trade/History/Aggregates | Trade/History/Aggregates
[**get_copiers_history**](DefaultApi.md#get_copiers_history) | **GET** /{Username}/Copiers/History | Copiers/History
[**get_copy_simulation_data**](DefaultApi.md#get_copy_simulation_data) | **GET** /{Username}/CopySimulation | CopySimulation
[**get_daily_gain**](DefaultApi.md#get_daily_gain) | **GET** /{Username}/DailyGain | Daily Gain
[**get_gains**](DefaultApi.md#get_gains) | **GET** /{Username}/Gain | Monthly Gain
[**get_live_copiers**](DefaultApi.md#get_live_copiers) | **GET** /{Username}/Copiers/Live | Copiers/Live
[**get_live_risk_score**](DefaultApi.md#get_live_risk_score) | **GET** /{Username}/RiskScore/Live/ | RiskScore/Live
[**get_risk_history**](DefaultApi.md#get_risk_history) | **GET** /{Username}/RiskScore/History | RiskScore/History
[**get_user_discovery_data**](DefaultApi.md#get_user_discovery_data) | **GET** /{Username}/Discovery | Discovery
[**get_user_followers**](DefaultApi.md#get_user_followers) | **GET** /{Username}/Social/Followers | Social/Followers
[**get_user_info**](DefaultApi.md#get_user_info) | **GET** /{Username}/Info | Info
[**get_user_portfolio_summary**](DefaultApi.md#get_user_portfolio_summary) | **GET** /{Username}/PortfolioSummary | PortfolioSummary
[**get_user_visual_portfolio**](DefaultApi.md#get_user_visual_portfolio) | **GET** /{Username}/VisualPortfolio | VisualPortfolio
[**get_users_discovery_data**](DefaultApi.md#get_users_discovery_data) | **GET** /Multiple/Discovery | Multiple Discovery
[**get_users_info**](DefaultApi.md#get_users_info) | **GET** /Multiple/Info | Multiple Info
[**get_users_visual_portfolio**](DefaultApi.md#get_users_visual_portfolio) | **GET** /Multiple/VisualPortfolio | Multiple Visual Portfolio

# **get_aggregates_history**
> get_aggregates_history(username, period=period)

Trade/History/Aggregates

The trading history aggregates retrieves aggregate data on the trading of a customer

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | The username which we want to get the aggregate data on
period = 'SixMonthsAgo' # str | The name of the period which we would like to get aggregate data on. The possible values are according to the period name in the metadata <a href=\"docs/services/5784e8446361c811ccfdf536/operations/578501516361c811ccfdf53c\">StatsPeriods API</a> (optional) (default to SixMonthsAgo)

try:
    # Trade/History/Aggregates
    api_instance.get_aggregates_history(username, period=period)
except ApiException as e:
    print("Exception when calling DefaultApi->get_aggregates_history: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username which we want to get the aggregate data on | 
 **period** | **str**| The name of the period which we would like to get aggregate data on. The possible values are according to the period name in the metadata &lt;a href&#x3D;\&quot;docs/services/5784e8446361c811ccfdf536/operations/578501516361c811ccfdf53c\&quot;&gt;StatsPeriods API&lt;/a&gt; | [optional] [default to SixMonthsAgo]

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_copiers_history**
> get_copiers_history(username, min_date=min_date)

Copiers/History

The API returns the daily number of copiers of a user

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | The username which I would like to get the copier history
min_date = 'min_date_example' # str | The minimum date for the response. The date should be formatted as YYYY/MM/DD (optional)

try:
    # Copiers/History
    api_instance.get_copiers_history(username, min_date=min_date)
except ApiException as e:
    print("Exception when calling DefaultApi->get_copiers_history: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username which I would like to get the copier history | 
 **min_date** | **str**| The minimum date for the response. The date should be formatted as YYYY/MM/DD | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_copy_simulation_data**
> get_copy_simulation_data(username, period, asset_allocation=asset_allocation)

CopySimulation

The copy simulation retrieves periodic copy simulation data including daily equity and optional daily asset allocation

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | The username to simulate
period = 'SixMonthsAgo' # str | The name of the period which we would like to get simulation data on. The possible values are according to the period name in the metadata <a href=\"docs/services/5784e8446361c811ccfdf536/operations/578501516361c811ccfdf53c\">StatsPeriods API</a> (default to SixMonthsAgo)
asset_allocation = true # bool | Return information on daily asset allocation (optional)

try:
    # CopySimulation
    api_instance.get_copy_simulation_data(username, period, asset_allocation=asset_allocation)
except ApiException as e:
    print("Exception when calling DefaultApi->get_copy_simulation_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username to simulate | 
 **period** | **str**| The name of the period which we would like to get simulation data on. The possible values are according to the period name in the metadata &lt;a href&#x3D;\&quot;docs/services/5784e8446361c811ccfdf536/operations/578501516361c811ccfdf53c\&quot;&gt;StatsPeriods API&lt;/a&gt; | [default to SixMonthsAgo]
 **asset_allocation** | **bool**| Return information on daily asset allocation | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_daily_gain**
> get_daily_gain(username, type, min_date, max_date)

Daily Gain

The Daily Gain API provides daily gains of users either as a time series or an aggregation

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | The username which we would like to get the gain information
type = 'Daily' # str | Type of data returned (default to Daily)
min_date = 'min_date_example' # str | The minimum date of the query. The date should be formatted as YYYY-MM-DD
max_date = 'max_date_example' # str | The maximum date of the query. The date should be formatted as YYYY-MM-DD

try:
    # Daily Gain
    api_instance.get_daily_gain(username, type, min_date, max_date)
except ApiException as e:
    print("Exception when calling DefaultApi->get_daily_gain: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username which we would like to get the gain information | 
 **type** | **str**| Type of data returned | [default to Daily]
 **min_date** | **str**| The minimum date of the query. The date should be formatted as YYYY-MM-DD | 
 **max_date** | **str**| The maximum date of the query. The date should be formatted as YYYY-MM-DD | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_gains**
> get_gains(username)

Monthly Gain

This API retrieves the monthly and yearly gains of a user

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | The username which we would like to get the gain information

try:
    # Monthly Gain
    api_instance.get_gains(username)
except ApiException as e:
    print("Exception when calling DefaultApi->get_gains: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username which we would like to get the gain information | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_live_copiers**
> get_live_copiers(username)

Copiers/Live

This API returns the number of live copiers by country

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | The username which we are trying to get the copiers

try:
    # Copiers/Live
    api_instance.get_live_copiers(username)
except ApiException as e:
    print("Exception when calling DefaultApi->get_live_copiers: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username which we are trying to get the copiers | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_live_risk_score**
> get_live_risk_score(username)

RiskScore/Live

The Risk Score Live API call returns data on the live customer risk score

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | The username which we would like to get the risk score information

try:
    # RiskScore/Live
    api_instance.get_live_risk_score(username)
except ApiException as e:
    print("Exception when calling DefaultApi->get_live_risk_score: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username which we would like to get the risk score information | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_risk_history**
> get_risk_history(username, min_date=min_date)

RiskScore/History

This API retrieves the historical risk score of a customer

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | The username which we would like to get the risk score information
min_date = 'min_date_example' # str | The minimum date to return information (optional)

try:
    # RiskScore/History
    api_instance.get_risk_history(username, min_date=min_date)
except ApiException as e:
    print("Exception when calling DefaultApi->get_risk_history: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username which we would like to get the risk score information | 
 **min_date** | **str**| The minimum date to return information | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_discovery_data**
> get_user_discovery_data(username, period=period)

Discovery

The API returns discovery values for a specific user

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | 
period = 'SixMonthsAgo' # str | Requested Period (optional) (default to SixMonthsAgo)

try:
    # Discovery
    api_instance.get_user_discovery_data(username, period=period)
except ApiException as e:
    print("Exception when calling DefaultApi->get_user_discovery_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**|  | 
 **period** | **str**| Requested Period | [optional] [default to SixMonthsAgo]

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_followers**
> get_user_followers(username)

Social/Followers

The API returns the number of followers of a user

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | The username which we want to query

try:
    # Social/Followers
    api_instance.get_user_followers(username)
except ApiException as e:
    print("Exception when calling DefaultApi->get_user_followers: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username which we want to query | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_info**
> get_user_info(username)

Info

This API returns general information on a user

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | The username which we would like to get the information

try:
    # Info
    api_instance.get_user_info(username)
except ApiException as e:
    print("Exception when calling DefaultApi->get_user_info: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username which we would like to get the information | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_portfolio_summary**
> get_user_portfolio_summary(username)

PortfolioSummary

The portfolio summary aggregates the live portfolio of a user by manually traded assets and all the social trades he has open

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | The requested username

try:
    # PortfolioSummary
    api_instance.get_user_portfolio_summary(username)
except ApiException as e:
    print("Exception when calling DefaultApi->get_user_portfolio_summary: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The requested username | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_visual_portfolio**
> get_user_visual_portfolio(username, top)

VisualPortfolio

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
username = 'username_example' # str | The requested username
top = 1.2 # float | The number of results to return

try:
    # VisualPortfolio
    api_instance.get_user_visual_portfolio(username, top)
except ApiException as e:
    print("Exception when calling DefaultApi->get_user_visual_portfolio: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The requested username | 
 **top** | **float**| The number of results to return | 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users_discovery_data**
> get_users_discovery_data(usernames, period, fields=fields)

Multiple Discovery

This API returns discovery values for multiple users

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
usernames = 'usernames_example' # str | A comma delimited list of usernames which I would like to get discovery data
period = 'SixMonthsAgo' # str | Requested Period (default to SixMonthsAgo)
fields = 'fields_example' # str | A comma delimited list of fields which should be returned (optional)

try:
    # Multiple Discovery
    api_instance.get_users_discovery_data(usernames, period, fields=fields)
except ApiException as e:
    print("Exception when calling DefaultApi->get_users_discovery_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usernames** | **str**| A comma delimited list of usernames which I would like to get discovery data | 
 **period** | **str**| Requested Period | [default to SixMonthsAgo]
 **fields** | **str**| A comma delimited list of fields which should be returned | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users_info**
> get_users_info(user_names=user_names)

Multiple Info

This API returns general information on a list of users

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
user_names = 'user_names_example' # str | A comma delimited list of usernames (optional)

try:
    # Multiple Info
    api_instance.get_users_info(user_names=user_names)
except ApiException as e:
    print("Exception when calling DefaultApi->get_users_info: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_names** | **str**| A comma delimited list of usernames | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users_visual_portfolio**
> get_users_visual_portfolio(user_names=user_names)

Multiple Visual Portfolio

This API returns the visual portfolio on a list of users

### Example
```python
from __future__ import print_function
import time
import etoro_api
from etoro_api.rest import ApiException
from pprint import pprint

# Configure API key authorization: apiKeyHeader
configuration = etoro_api.Configuration()
configuration.api_key['Ocp-Apim-Subscription-Key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Ocp-Apim-Subscription-Key'] = 'Bearer'
# Configure API key authorization: apiKeyQuery
configuration = etoro_api.Configuration()
configuration.api_key['subscription-key'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['subscription-key'] = 'Bearer'

# create an instance of the API class
api_instance = etoro_api.DefaultApi(etoro_api.ApiClient(configuration))
user_names = 'user_names_example' # str | A comma delimited list of usernames (optional)

try:
    # Multiple Visual Portfolio
    api_instance.get_users_visual_portfolio(user_names=user_names)
except ApiException as e:
    print("Exception when calling DefaultApi->get_users_visual_portfolio: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_names** | **str**| A comma delimited list of usernames | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyHeader](../README.md#apiKeyHeader), [apiKeyQuery](../README.md#apiKeyQuery)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

