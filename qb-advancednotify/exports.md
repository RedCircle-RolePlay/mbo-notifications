## Exports

### `exports['qb-advancednotify']:SendNotification(data)`

#### Parameters:

| Field     | Type     | Description                         |
|-----------|----------|-------------------------------------|
| type      | string   | `'success'`, `'error'`, `'info'`, `'warning'` |
| title     | string   | Notification title                  |
| message   | string   | Notification message                |
| duration  | number   | Duration in milliseconds (optional) |
| position  | string   | `'top-right'`, `'bottom-left'`, etc. (optional) |

#### Example:

```lua
exports['qb-advancednotify']:SendNotification({
 type = 'error',
 title = 'Error!',
 message = 'Something went wrong.',
 duration = 5000,
 position = 'top-right'
})