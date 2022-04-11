.PHONY: directories_setup, clean_up

directories_setup:
	mkdir -p ./data/{logs,media_store}
	chmod -Rf 750 ./data

clean_up:
	rm -rf ./data/logs/*
	rm -rf ./data/media_store/*