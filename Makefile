.PHONY: build clean

build:
	npx antora antora-playbook.yml

clean:
	rm -r build/*
