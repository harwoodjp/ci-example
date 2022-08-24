![Run tests in container](https://github.com/harwoodjp/ci-example/actions/workflows/tests.yml/badge.svg
)

* GHA for `pytest` with `docker-compose` test runner
* GHA Secrets
	* Added `$GHA_CALL` to repo
	* Logs as `***` in output
	* Set `GHA_CALL=$GHA_CALL` in `docker-compose`
	* `$GHA_CALL` = boolean for conditional behavior
		* e.g. start instrumentation agent only in CI context
* `docker-compose run tests`
	
