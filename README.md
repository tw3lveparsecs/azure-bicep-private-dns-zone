# Private DNS Zone 
This module creates a Private DNS Zone.

## Usage

### Example - Private DNS Zone

```bicep
param deploymentName string = 'privateDnsZone${utcNow()}'

module privateDnsZone 'private-dns-zone.bicep' = {
  name: deploymentName
  params: {
    privateDnsZoneName: 'contoso.com'
  }
}
```