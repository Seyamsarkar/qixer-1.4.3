
# Refund Payment Request

Describes a request to refund a payment using [RefundPayment](../../doc/apis/refunds.md#refund-payment).

## Structure

`RefundPaymentRequest`

## Fields

| Name | Type | Tags | Description | Getter | Setter |
|  --- | --- | --- | --- | --- | --- |
| `idempotencyKey` | `string` | Required | A unique string that identifies this `RefundPayment` request. The key can be any valid string<br>but must be unique for every `RefundPayment` request.<br><br>For more information, see [Idempotency](https://developer.squareup.com/docs/working-with-apis/idempotency).<br>**Constraints**: *Minimum Length*: `1` | getIdempotencyKey(): string | setIdempotencyKey(string idempotencyKey): void |
| `amountMoney` | [`Money`](../../doc/models/money.md) | Required | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. | getAmountMoney(): Money | setAmountMoney(Money amountMoney): void |
| `appFeeMoney` | [`?Money`](../../doc/models/money.md) | Optional | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. | getAppFeeMoney(): ?Money | setAppFeeMoney(?Money appFeeMoney): void |
| `paymentId` | `?string` | Optional | The unique ID of the payment being refunded. Must be provided and non-empty. | getPaymentId(): ?string | setPaymentId(?string paymentId): void |
| `reason` | `?string` | Optional | A description of the reason for the refund.<br>**Constraints**: *Maximum Length*: `192` | getReason(): ?string | setReason(?string reason): void |
| `paymentVersionToken` | `?string` | Optional | Used for optimistic concurrency. This opaque token identifies the current `Payment`<br>version that the caller expects. If the server has a different version of the Payment,<br>the update fails and a response with a VERSION_MISMATCH error is returned.<br>If the versions match, or the field is not provided, the refund proceeds as normal. | getPaymentVersionToken(): ?string | setPaymentVersionToken(?string paymentVersionToken): void |
| `teamMemberId` | `?string` | Optional | An optional [TeamMember](../../doc/models/team-member.md) ID to associate with this refund.<br>**Constraints**: *Maximum Length*: `192` | getTeamMemberId(): ?string | setTeamMemberId(?string teamMemberId): void |

## Example (as JSON)

```json
{
  "amount_money": {
    "amount": 1000,
    "currency": "USD"
  },
  "app_fee_money": {
    "amount": 10,
    "currency": "USD"
  },
  "idempotency_key": "9b7f2dcf-49da-4411-b23e-a2d6af21333a",
  "payment_id": "R2B3Z8WMVt3EAmzYWLZvz7Y69EbZY",
  "reason": "Example"
}
```

