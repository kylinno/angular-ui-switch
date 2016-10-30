NPM=./node_modules/.bin


compile: js
js:
	@echo "Minifying javascript ..."
	@$(NPM)/uglifyjs ./src/directives/angular-ui-switch.js --compress --mangle --comments > ./dist/angular-ui-switch.min.js
