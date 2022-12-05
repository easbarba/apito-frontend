setup:
	npm install

dev:
	npm run serve

prod:
	npm run build

tests:
	npm run test:unit

lint:
	npm run lint

image:
	sudo podman build -f ./Dockerfile --tag easbarbosa/apito:frontend-${APITO_VERSION}

release:
	sudo podman push easbarbosa/apito:frontend-${APITO_VERSION}
