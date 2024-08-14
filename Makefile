redocly-local:
	@docker run --rm -v $(PWD):/spec redocly/cli bundle openapi/openapi.yaml -o documentation/lewellery-api.yaml

redocly-dist:
	@docker run --rm -v $(PWD):/spec redocly/cli build-docs openapi/openapi.yaml --output=jewellery-api.html