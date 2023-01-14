<?php

declare(strict_types=1);

namespace Square\Apis;

use Square\Exceptions\ApiException;
use Square\ConfigurationInterface;
use Square\ApiHelper;
use Square\Models;
use Square\Http\ApiResponse;
use Square\Http\HttpRequest;
use Square\Http\HttpResponse;
use Square\Http\HttpMethod;
use Square\Http\HttpContext;
use Square\Http\HttpCallBack;
use Unirest\Request;

class RefundsApi extends BaseApi
{
    public function __construct(ConfigurationInterface $config, array $authManagers, ?HttpCallBack $httpCallBack)
    {
        parent::__construct($config, $authManagers, $httpCallBack);
    }

    /**
     * Retrieves a list of refunds for the account making the request.
     *
     * Results are eventually consistent, and new refunds or changes to refunds might take several
     * seconds to appear.
     *
     * The maximum results per page is 100.
     *
     * @param string|null $beginTime The timestamp for the beginning of the requested reporting
     *        period, in RFC 3339 format.
     *
     *        Default: The current time minus one year.
     * @param string|null $endTime The timestamp for the end of the requested reporting period, in
     *        RFC 3339 format.
     *
     *        Default: The current time.
     * @param string|null $sortOrder The order in which results are listed: - `ASC` - Oldest to
     *        newest.
     *        - `DESC` - Newest to oldest (default).
     * @param string|null $cursor A pagination cursor returned by a previous call to this endpoint.
     *        Provide this cursor to retrieve the next set of results for the original query.
     *
     *        For more information, see [Pagination](https://developer.squareup.
     *        com/docs/basics/api101/pagination).
     * @param string|null $locationId Limit results to the location supplied. By default, results
     *        are returned
     *        for all locations associated with the seller.
     * @param string|null $status If provided, only refunds with the given status are returned. For
     *        a list of refund status values, see [PaymentRefund]($m/PaymentRefund).
     *
     *        Default: If omitted, refunds are returned regardless of their status.
     * @param string|null $sourceType If provided, only returns refunds whose payments have the
     *        indicated source type.
     *        Current values include `CARD`, `BANK_ACCOUNT`, `WALLET`, `CASH`, and `EXTERNAL`.
     *        For information about these payment source types, see
     *        [Take Payments](https://developer.squareup.com/docs/payments-api/take-payments).
     *
     *        Default: If omitted, refunds are returned regardless of the source type.
     * @param int|null $limit The maximum number of results to be returned in a single page. It is
     *        possible to receive fewer results than the specified limit on a given page.
     *
     *        If the supplied value is greater than 100, no more than 100 results are returned.
     *
     *        Default: 100
     *
     * @return ApiResponse Response from the API call
     *
     * @throws ApiException Thrown if API call fails
     */
    public function listPaymentRefunds(
        ?string $beginTime = null,
        ?string $endTime = null,
        ?string $sortOrder = null,
        ?string $cursor = null,
        ?string $locationId = null,
        ?string $status = null,
        ?string $sourceType = null,
        ?int $limit = null
    ): ApiResponse {
        //prepare query string for API call
        $_queryUrl = $this->config->getBaseUri() . '/v2/refunds';

        //process query parameters
        ApiHelper::appendUrlWithQueryParameters($_queryUrl, [
            'begin_time'  => $beginTime,
            'end_time'    => $endTime,
            'sort_order'  => $sortOrder,
            'cursor'      => $cursor,
            'location_id' => $locationId,
            'status'      => $status,
            'source_type' => $sourceType,
            'limit'       => $limit,
        ]);

        //prepare headers
        $_headers = [
            'user-agent'    => $this->internalUserAgent,
            'Accept'        => 'application/json',
            'Square-Version' => $this->config->getSquareVersion()
        ];
        $_headers = ApiHelper::mergeHeaders($_headers, $this->config->getAdditionalHeaders());

        $_httpRequest = new HttpRequest(HttpMethod::GET, $_headers, $_queryUrl);

        // Apply authorization to request
        $this->getAuthManager('global')->apply($_httpRequest);

        //call on-before Http callback
        if ($this->getHttpCallBack() != null) {
            $this->getHttpCallBack()->callOnBeforeRequest($_httpRequest);
        }

        // and invoke the API call request to fetch the response
        try {
            $response = Request::get($_httpRequest->getQueryUrl(), $_httpRequest->getHeaders());
        } catch (\Unirest\Exception $ex) {
            throw new ApiException($ex->getMessage(), $_httpRequest);
        }


        $_httpResponse = new HttpResponse($response->code, $response->headers, $response->raw_body);
        $_httpContext = new HttpContext($_httpRequest, $_httpResponse);

        //call on-after Http callback
        if ($this->getHttpCallBack() != null) {
            $this->getHttpCallBack()->callOnAfterRequest($_httpContext);
        }

        if (!$this->isValidResponse($_httpResponse)) {
            return ApiResponse::createFromContext($response->body, null, $_httpContext);
        }

        $deserializedResponse = ApiHelper::mapClass(
            $_httpRequest,
            $_httpResponse,
            $response->body,
            'ListPaymentRefundsResponse'
        );
        return ApiResponse::createFromContext($response->body, $deserializedResponse, $_httpContext);
    }

    /**
     * Refunds a payment. You can refund the entire payment amount or a
     * portion of it. You can use this endpoint to refund a card payment or record a
     * refund of a cash or external payment. For more information, see
     * [Refund Payment](https://developer.squareup.com/docs/payments-api/refund-payments).
     *
     * @param Models\RefundPaymentRequest $body An object containing the fields to POST for the
     *        request.
     *
     *        See the corresponding object definition for field details.
     *
     * @return ApiResponse Response from the API call
     *
     * @throws ApiException Thrown if API call fails
     */
    public function refundPayment(Models\RefundPaymentRequest $body): ApiResponse
    {
        //prepare query string for API call
        $_queryUrl = $this->config->getBaseUri() . '/v2/refunds';

        //prepare headers
        $_headers = [
            'user-agent'    => $this->internalUserAgent,
            'Accept'        => 'application/json',
            'Square-Version' => $this->config->getSquareVersion(),
            'Content-Type'    => 'application/json'
        ];
        $_headers = ApiHelper::mergeHeaders($_headers, $this->config->getAdditionalHeaders());

        //json encode body
        $_bodyJson = ApiHelper::serialize($body);

        $_httpRequest = new HttpRequest(HttpMethod::POST, $_headers, $_queryUrl);

        // Apply authorization to request
        $this->getAuthManager('global')->apply($_httpRequest);

        //call on-before Http callback
        if ($this->getHttpCallBack() != null) {
            $this->getHttpCallBack()->callOnBeforeRequest($_httpRequest);
        }

        // and invoke the API call request to fetch the response
        try {
            $response = Request::post($_httpRequest->getQueryUrl(), $_httpRequest->getHeaders(), $_bodyJson);
        } catch (\Unirest\Exception $ex) {
            throw new ApiException($ex->getMessage(), $_httpRequest);
        }


        $_httpResponse = new HttpResponse($response->code, $response->headers, $response->raw_body);
        $_httpContext = new HttpContext($_httpRequest, $_httpResponse);

        //call on-after Http callback
        if ($this->getHttpCallBack() != null) {
            $this->getHttpCallBack()->callOnAfterRequest($_httpContext);
        }

        if (!$this->isValidResponse($_httpResponse)) {
            return ApiResponse::createFromContext($response->body, null, $_httpContext);
        }

        $deserializedResponse = ApiHelper::mapClass(
            $_httpRequest,
            $_httpResponse,
            $response->body,
            'RefundPaymentResponse'
        );
        return ApiResponse::createFromContext($response->body, $deserializedResponse, $_httpContext);
    }

    /**
     * Retrieves a specific refund using the `refund_id`.
     *
     * @param string $refundId The unique ID for the desired `PaymentRefund`.
     *
     * @return ApiResponse Response from the API call
     *
     * @throws ApiException Thrown if API call fails
     */
    public function getPaymentRefund(string $refundId): ApiResponse
    {
        //prepare query string for API call
        $_queryUrl = $this->config->getBaseUri() . '/v2/refunds/{refund_id}';

        //process template parameters
        $_queryUrl = ApiHelper::appendUrlWithTemplateParameters($_queryUrl, [
            'refund_id' => $refundId,
        ]);

        //prepare headers
        $_headers = [
            'user-agent'    => $this->internalUserAgent,
            'Accept'        => 'application/json',
            'Square-Version' => $this->config->getSquareVersion()
        ];
        $_headers = ApiHelper::mergeHeaders($_headers, $this->config->getAdditionalHeaders());

        $_httpRequest = new HttpRequest(HttpMethod::GET, $_headers, $_queryUrl);

        // Apply authorization to request
        $this->getAuthManager('global')->apply($_httpRequest);

        //call on-before Http callback
        if ($this->getHttpCallBack() != null) {
            $this->getHttpCallBack()->callOnBeforeRequest($_httpRequest);
        }

        // and invoke the API call request to fetch the response
        try {
            $response = Request::get($_httpRequest->getQueryUrl(), $_httpRequest->getHeaders());
        } catch (\Unirest\Exception $ex) {
            throw new ApiException($ex->getMessage(), $_httpRequest);
        }


        $_httpResponse = new HttpResponse($response->code, $response->headers, $response->raw_body);
        $_httpContext = new HttpContext($_httpRequest, $_httpResponse);

        //call on-after Http callback
        if ($this->getHttpCallBack() != null) {
            $this->getHttpCallBack()->callOnAfterRequest($_httpContext);
        }

        if (!$this->isValidResponse($_httpResponse)) {
            return ApiResponse::createFromContext($response->body, null, $_httpContext);
        }

        $deserializedResponse = ApiHelper::mapClass(
            $_httpRequest,
            $_httpResponse,
            $response->body,
            'GetPaymentRefundResponse'
        );
        return ApiResponse::createFromContext($response->body, $deserializedResponse, $_httpContext);
    }
}
