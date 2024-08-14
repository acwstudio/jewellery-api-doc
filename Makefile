redoc-cli-yaml:
	@docker run --rm -v $(PWD):/spec redocly/cli bundle openapi/openapi.yaml -o documentation/jewellery-api.yaml

redoc-cli-json:
	@docker run --rm -v $(PWD):/spec redocly/cli bundle openapi/openapi.yaml -o docs/jewellery-api.json

redoc-cli-html:
	@docker run --rm -v $(PWD):/spec redocly/cli build-docs openapi/openapi.yaml --output=dist/jewellery-api.html

redocly-web:
	@docker compose up