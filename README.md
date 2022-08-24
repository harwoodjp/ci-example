![Run tests in container](https://github.com/harwoodjp/ci-example/actions/workflows/tests.yml/badge.svg
)
[![Maintainability](https://api.codeclimate.com/v1/badges/9ca293c9e0ea002bd960/maintainability)](https://codeclimate.com/github/harwoodjp/ci-example/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/9ca293c9e0ea002bd960/test_coverage)](https://codeclimate.com/github/harwoodjp/ci-example/test_coverage)

* GHA for `pytest` with `docker-compose` test runner
* GHA Secrets
	* Added `$GHA_CALL` to repo
	* Logs as `***` in output
	* Set `GHA_CALL=$GHA_CALL` in `docker-compose`
	* `$GHA_CALL` = boolean for conditional behavior
		* e.g. start instrumentation agent only in CI context
* `docker-compose run tests`
	
