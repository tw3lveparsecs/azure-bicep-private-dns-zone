@description('Private Dns Zone name')
param privateDnsZoneName string

@description('Private Dns Zone location')
param location string = 'global'

resource privateDnsZone 'Microsoft.Network/privateDnsZones@2020-06-01' = {
  name: privateDnsZoneName
  location: location
}
