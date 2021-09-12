
all: build deploy


build:
	mkdocs build

serve:
	mkdocs serve

deploy:
	mkdocs gh-deploy

clean:
	rm -rf site
