# Convox Destroy Action
This Action deletes an app in a Convox Rack. Deleting an app is a permanent and destructive action.

## Inputs
### `rack`
**Required** The name of the [Convox Rack](https://docs.convox.com/introduction/rack) containing the app you wish to delete.
### `app`
**Required** The name of the [app](https://docs.convox.com/deployment/creating-an-application) you wish to delete.
## Example usage
```
uses: convox/action-delete@v1
with:
  rack: staging
  app: myapp
```