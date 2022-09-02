import os

def reverse(key: str) -> str:
	return key[::-1]

def test_reverse_pass() -> None:
	assert reverse("foo") == "oof"

def test_cc_reporter_not_null() -> None:
	try:
		os.environ.get("CC_TEST_REPORTER_ID")
	except KeyError:
		assert False

def test_failure() -> None:
	assert False