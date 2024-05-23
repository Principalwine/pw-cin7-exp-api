%dw 2.0
output application/json
---
{
	"type": "httpRequest",
	"httpRequest": {
		"protocol": Mule::p('endSystem.PW-CIN7-PROC.protocol') as String,
		"method": "POST",
		"host": Mule::p('endSystem.PW-CIN7-PROC.host') as String,
		"url": Mule::p('operation.CUSTOMER.path') as String,
		"queryParams": {
		},
		"uriParams": {
		},
		"headers": {
			"Content-Type": "application/json",
			"client_id": Mule::p('secure::endSystem.PW-CIN7-PROC.client_id'),
  			"client_secret": Mule::p('secure::endSystem.PW-CIN7-PROC.client_secret')
		},
	},
	"httpGetRequest": {
		"protocol": Mule::p('endSystem.cin7-sys-api.protocol') as String,
		"method": "GET",
		"host": Mule::p('endSystem.cin7-sys-api.host') as String,
		"url": Mule::p('operation.GET-LOCATION.path') as String,
		"queryParams": {
			"Name": payload.CustomerDetailsList[0].Location
		},
		"uriParams": {
		},
		"headers": {
			"Content-Type": "application/json",
			"client_id": Mule::p('secure::endSystem.cin7-sys-api.client_id'),
  			"client_secret": Mule::p('secure::endSystem.cin7-sys-api.client_secret')
		},
	},
	"operation": "CUSTOMER",
	"requestBody": payload
}