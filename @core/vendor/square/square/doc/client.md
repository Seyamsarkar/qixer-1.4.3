
# Client Class Documentation

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `squareVersion` | `string` | Square Connect API versions<br>*Default*: `'2022-04-20'` |
| `customUrl` | `string` | Sets the base URL requests are made to. Defaults to `https://connect.squareup.com`<br>*Default*: `'https://connect.squareup.com'` |
| `environment` | `string` | The API environment. <br> **Default: `production`** |
| `timeout` | `int` | Timeout for API calls in seconds.<br>*Default*: `60` |
| `enableRetries` | `bool` | Whether to enable retries and backoff feature.<br>*Default*: `false` |
| `numberOfRetries` | `int` | The number of retries to make.<br>*Default*: `0` |
| `retryInterval` | `float` | The retry time interval between the endpoint calls.<br>*Default*: `1` |
| `backOffFactor` | `float` | Exponential backoff factor to increase interval between retries.<br>*Default*: `2` |
| `maximumRetryWaitTime` | `int` | The maximum wait time in seconds for overall retrying requests.<br>*Default*: `0` |
| `retryOnTimeout` | `bool` | Whether to retry on request timeout.<br>*Default*: `true` |
| `httpStatusCodesToRetry` | `array` | Http status codes to retry against.<br>*Default*: `408, 413, 429, 500, 502, 503, 504, 521, 522, 524` |
| `httpMethodsToRetry` | `array` | Http methods to retry against.<br>*Default*: `'GET', 'PUT'` |
| `additionalHeaders` | `array` | Additional headers to add to each API call<br>*Default*: `[]` |
| `userAgentDetail` | `string` | User agent detail, to be appended with user-agent header. |
| `accessToken` | `string` | The OAuth 2.0 Access Token to use for API requests. |

The API client can be initialized as follows:

```php
$client = new Square\SquareClient([
    // Set authentication parameters
    'accessToken' => 'AccessToken',
    'squareVersion' => '2022-04-20',

    // Set the environment
    'environment' => 'production',

    // Set configuration parameters
    'customUrl' => 'https://connect.squareup.com',
]);
```

API calls return an `ApiResponse` object that includes the following fields:

| Field | Description |
|  --- | --- |
| `getStatusCode` | Status code of the HTTP response |
| `getHeaders` | Headers of the HTTP response as a Hash |
| `getResult` | The deserialized body of the HTTP response as a String |

## Make Calls with the API Client

```php
<?php

require_once "vendor/autoload.php";

$client = new Square\SquareClient([
    'accessToken' => 'AccessToken',
    'squareVersion' => '2022-04-20',
]);

$locationsApi = $client->getLocationsApi();

$apiResponse = $locationsApi->listLocations();

if ($apiResponse->isSuccess()) {
    $listLocationsResponse = $apiResponse->getResult();
} else {
    $errors = $apiResponse->getErrors();
}

// Get more response info...
// $statusCode = $apiResponse->getStatusCode();
// $headers = $apiResponse->getHeaders();
```

## Square Client

The gateway for the SDK. This class acts as a factory for the Apis and also holds the configuration of the SDK.

## API

| Name | Description |
|  --- | --- |
| getMobileAuthorizationApi() | Gets MobileAuthorizationApi |
| getOAuthApi() | Gets OAuthApi |
| getV1TransactionsApi() | Gets V1TransactionsApi |
| getApplePayApi() | Gets ApplePayApi |
| getBankAccountsApi() | Gets BankAccountsApi |
| getBookingsApi() | Gets BookingsApi |
| getCardsApi() | Gets CardsApi |
| getCashDrawersApi() | Gets CashDrawersApi |
| getCatalogApi() | Gets CatalogApi |
| getCustomersApi() | Gets CustomersApi |
| getCustomerGroupsApi() | Gets CustomerGroupsApi |
| getCustomerSegmentsApi() | Gets CustomerSegmentsApi |
| getDevicesApi() | Gets DevicesApi |
| getDisputesApi() | Gets DisputesApi |
| getEmployeesApi() | Gets EmployeesApi |
| getGiftCardsApi() | Gets GiftCardsApi |
| getGiftCardActivitiesApi() | Gets GiftCardActivitiesApi |
| getInventoryApi() | Gets InventoryApi |
| getInvoicesApi() | Gets InvoicesApi |
| getLaborApi() | Gets LaborApi |
| getLocationsApi() | Gets LocationsApi |
| getCheckoutApi() | Gets CheckoutApi |
| getTransactionsApi() | Gets TransactionsApi |
| getLoyaltyApi() | Gets LoyaltyApi |
| getMerchantsApi() | Gets MerchantsApi |
| getOrdersApi() | Gets OrdersApi |
| getPaymentsApi() | Gets PaymentsApi |
| getPayoutsApi() | Gets PayoutsApi |
| getRefundsApi() | Gets RefundsApi |
| getSitesApi() | Gets SitesApi |
| getSnippetsApi() | Gets SnippetsApi |
| getSubscriptionsApi() | Gets SubscriptionsApi |
| getTeamApi() | Gets TeamApi |
| getTerminalApi() | Gets TerminalApi |
| getVendorsApi() | Gets VendorsApi |

