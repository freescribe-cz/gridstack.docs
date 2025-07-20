.PHONY: node-lts prep build clean

node-lts:
	wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
	nvm install --lts

prep: node-lts
	node -e "fs.writeFileSync('package.json', '{}')"
	npm i -D -E antora

build:
	npx antora antora-playbook.yml

clean:
	rm -r build/*
