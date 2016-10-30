NPM=./node_modules/.bin


compile: js

publish: bower

js:
	@echo "Minifying javascript ..."
	@$(NPM)/uglifyjs ./src/directives/angular-ui-switch.js --compress --mangle --comments > ./dist/angular-ui-switch.min.js


bower:
	@echo "Publishing as bower ..."
	bower register angular-ui-switchery git@github.com:kylinno/angular-ui-switch.git
