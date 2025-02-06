test.ulx: scaffolding story.ni
	inform7-compile test.ulx -c

release.ulx: scaffolding story.ni
	inform7-compile release.ulx -r

.PHONY: test
test: test.ulx
	inform7-run test.ulx

scaffolding:
	inform7-create-scaffolding

.PHONY: clean
clean:
	rm -rf scaffolding
	rm -f test.ulx
	rm -f release.ulx
