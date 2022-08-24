import os

def reverse(key: str) -> str:
	return key[::-1]

def test_reverse_pass() -> None:
	assert reverse("foo") == "oof"

def test_gha_variable() -> None:
	assert os.environ.get("GHA_CALL") == True	