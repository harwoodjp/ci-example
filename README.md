![Run tests in container](https://github.com/harwoodjp/ci-example/actions/workflows/tests.yml/badge.svg
)

* GHA for `pytest` with `docker-compose` test runner
* GHA Secrets
	* `***` in output
	* Pass to `docker-compose`
	* `GHA_CALL` = different behavior if executed in GHA context

	`docker-compose run tests`
	