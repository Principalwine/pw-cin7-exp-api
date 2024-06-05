%dw 2.0
output application/json
---
{
	"type": "httpRequest",
	"httpRequest": {
		"protocol": Mule::p('endSystem.PW-CIN7-PROC.protocol') as String,
		"method": "POST",
		"host": Mule::p('endSystem.PW-CIN7-PROC.host') as String,
		"url": Mule::p('operation.SALES-ORDER.path') as String,
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
	"operation": "SALES-ORDER",
	"requestBody": payload
}