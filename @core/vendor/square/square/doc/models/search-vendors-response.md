
# Search Vendors Response

Represents an output from a call to [SearchVendors](../../doc/apis/vendors.md#search-vendors).

## Structure

`SearchVendorsResponse`

## Fields

| Name | Type | Tags | Description | Getter | Setter |
|  --- | --- | --- | --- | --- | --- |
| `errors` | [`?(Error[])`](../../doc/models/error.md) | Optional | Errors encountered when the request fails. | getErrors(): ?array | setErrors(?array errors): void |
| `vendors` | [`?(Vendor[])`](../../doc/models/vendor.md) | Optional | The [Vendor](../../doc/models/vendor.md) objects matching the specified search filter. | getVendors(): ?array | setVendors(?array vendors): void |
| `cursor` | `?string` | Optional | The pagination cursor to be used in a subsequent request. If unset,<br>this is the final response.<br><br>See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. | getCursor(): ?string | setCursor(?string cursor): void |

## Example (as JSON)

```json
{
  "errors": [
    {
      "category": "AUTHENTICATION_ERROR",
      "code": "VERIFY_CVV_FAILURE",
      "detail": "detail1",
      "field": "field9"
    },
    {
      "category": "INVALID_REQUEST_ERROR",
      "code": "VERIFY_AVS_FAILURE",
      "detail": "detail2",
      "field": "field0"
    },
    {
      "category": "RATE_LIMIT_ERROR",
      "code": "CARD_DECLINED_CALL_ISSUER",
      "detail": "detail3",
      "field": "field1"
    }
  ],
  "vendors": [
    {
      "id": "id9",
      "created_at": "created_at7",
      "updated_at": "updated_at5",
      "name": "name9",
      "address": {
        "address_line_1": "address_line_15",
        "address_line_2": "address_line_25",
        "address_line_3": "address_line_31",
        "locality": "locality5",
        "sublocality": "sublocality5"
      }
    },
    {
      "id": "id0",
      "created_at": "created_at8",
      "updated_at": "updated_at4",
      "name": "name0",
      "address": {
        "address_line_1": "address_line_16",
        "address_line_2": "address_line_26",
        "address_line_3": "address_line_32",
        "locality": "locality6",
        "sublocality": "sublocality6"
      }
    },
    {
      "id": "id1",
      "created_at": "created_at9",
      "updated_at": "updated_at3",
      "name": "name1",
      "address": {
        "address_line_1": "address_line_17",
        "address_line_2": "address_line_27",
        "address_line_3": "address_line_33",
        "locality": "locality7",
        "sublocality": "sublocality7"
      }
    }
  ],
  "cursor": "cursor6"
}
```

