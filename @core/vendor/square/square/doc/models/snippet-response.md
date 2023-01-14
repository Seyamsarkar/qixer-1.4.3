
# Snippet Response

## Structure

`SnippetResponse`

## Fields

| Name | Type | Tags | Description | Getter | Setter |
|  --- | --- | --- | --- | --- | --- |
| `errors` | [`?(Error[])`](../../doc/models/error.md) | Optional | Any errors that occurred during the request. | getErrors(): ?array | setErrors(?array errors): void |
| `snippet` | [`?Snippet`](../../doc/models/snippet.md) | Optional | Represents the snippet that is added to a Square Online site. The snippet code is injected into the `head` element of all pages on the site, except for checkout pages. | getSnippet(): ?Snippet | setSnippet(?Snippet snippet): void |

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
  "snippet": {
    "id": "id0",
    "site_id": "site_id6",
    "content": "content4",
    "created_at": "created_at8",
    "updated_at": "updated_at4"
  }
}
```

