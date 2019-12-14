# Makefile use to manage circleci orbs

NAMESPACE = woshizzy
ORB_NAME = service-base
CURRENT_VERSION ?= $(shell git branch | grep \* | cut -d ' ' -f 2)


# validate orb files.
validate:
	for orb in $(shell ls orbs); \
	do \
	circleci orb validate orbs/$$orb; \
	done


# pushlish orb version
publish_dev:
	circleci orb publish orbs/$(ORB_NAME).yaml $(NAMESPACE)/$(ORB_NAME)@dev:$(CURRENT_VERSION)

publish: publish_dev
	circleci orb publish promte $(NAMESPACE)/$(ORB_NAME)@dev:$(CURRENT_VERSION) patch


# check content in orbs.
source_dev:
	circleci orb source $(NAMESPACE)/$(ORB_NAME)@dev:$(CURRENT_VERSION)

source_volatile:
	circleci orb source $(NAMESPACE)/$(ORB_NAME)@volatile
