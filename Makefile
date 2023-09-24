test:
	@set -e; \
	for f in data/*.json ; do \
  		echo "Testing $$f"; \
		cat $$f | jq > /dev/null; \
	done

.phony: test
