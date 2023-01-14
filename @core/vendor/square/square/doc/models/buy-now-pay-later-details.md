
# Buy Now Pay Later Details

Additional details about a Buy Now Pay Later payment type.

## Structure

`BuyNowPayLaterDetails`

## Fields

| Name | Type | Tags | Description | Getter | Setter |
|  --- | --- | --- | --- | --- | --- |
| `brand` | `?string` | Optional | The brand used for the Buy Now Pay Later payment.<br>The brand can be `AFTERPAY` or `UNKNOWN`.<br>**Constraints**: *Maximum Length*: `50` | getBrand(): ?string | setBrand(?string brand): void |
| `afterpayDetails` | [`?AfterpayDetails`](../../doc/models/afterpay-details.md) | Optional | Additional details about Afterpay payments. | getAfterpayDetails(): ?AfterpayDetails | setAfterpayDetails(?AfterpayDetails afterpayDetails): void |

## Example (as JSON)

```json
{
  "brand": "brand4",
  "afterpay_details": {
    "email_address": "email_address4"
  }
}
```

