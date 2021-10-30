# Private DNS Zone 
This module creates a Private DNS Zone.

## Usage

### Example 1 - Private DNS Zone without VNet link

```bicep
param deploymentName string = 'privateDnsZone${utcNow()}'

module privateDnsZone 'private-dns-zone.bicep' = {
  name: deploymentName
  params: {
    privateDnsZoneName: 'contoso.com'
  }
}
```

### Example 2 - Private DNS Zone with VNet link and auto registration enabled

```bicep
param deploymentName string = 'privateDnsZone${utcNow()}'

module privateDnsZone 'private-dns-zone.bicep' = {
  name: deploymentName
  params: {
    privateDnsZoneName: 'contoso.com'
    enableVnetLink: true
    vnetResourceId: 'vnetResourceId'
    registrationEnabled: true
  }
}
```