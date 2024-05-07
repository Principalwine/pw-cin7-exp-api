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
			"client_id": Mule::p('secure::PW-CIN7-PROC-SECURE.client_id'),
  			"client_secret": Mule::p('secure::PW-CIN7-PROC-SECURE.client_secret')
		},
	},
	"operation": "CUSTOMER",
	"requestBody": payload
}