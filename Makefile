redoc-cli-local:
	@docker run --rm -v $(PWD):/spec redocly/cli bundle openapi/openapi.yaml -o documentation/jewellery-api.json

redoc-cli-dist:
	@docker run --rm -v $(PWD):/spec redocly/cli build-docs openapi/openapi.yaml --output=dist/jewellery-api.html

redocly-web:
	@docker compose up