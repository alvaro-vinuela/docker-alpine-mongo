VERSION = 4.0.5-0
IMAGE = mvertes/alpine-mongo:$(VERSION)

all:

image:
	docker build -t $(IMAGE) --no-cache .

publish:
	docker push $(IMAGE)
