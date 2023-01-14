
# List Bookings Response

## Structure

`ListBookingsResponse`

## Fields

| Name | Type | Tags | Description | Getter | Setter |
|  --- | --- | --- | --- | --- | --- |
| `bookings` | [`?(Booking[])`](../../doc/models/booking.md) | Optional | The list of targeted bookings. | getBookings(): ?array | setBookings(?array bookings): void |
| `cursor` | `?string` | Optional | The pagination cursor to be used in the subsequent request to get the next page of the results. Stop retrieving the next page of the results when the cursor is not set.<br>**Constraints**: *Maximum Length*: `65536` | getCursor(): ?string | setCursor(?string cursor): void |
| `errors` | [`?(Error[])`](../../doc/models/error.md) | Optional | Errors that occurred during the request. | getErrors(): ?array | setErrors(?array errors): void |

## Example (as JSON)

```json
{
  "bookings": [
    {
      "appointment_segments": [
        {
          "duration_minutes": 60,
          "service_variation_id": "RU3PBTZTK7DXZDQFCJHOK2MC",
          "service_variation_version": 1599775456731,
          "team_member_id": "TMXUrsBWWcHTt79t"
        }
      ],
      "created_at": "2020-10-28T15:47:41Z",
      "customer_id": "EX2QSVGTZN4K1E5QE1CBFNVQ8M",
      "customer_note": "",
      "id": "zkras0xv0xwswx",
      "location_id": "LEQHH0YY8B42M",
      "seller_note": "",
      "start_at": "2020-11-26T13:00:00Z",
      "status": "ACCEPTED",
      "updated_at": "2020-10-28T15:49:25Z",
      "version": 1
    }
  ],
  "cursor": "null",
  "errors": []
}
```

