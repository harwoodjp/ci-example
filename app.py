def reverse(key: str) -> str:
	return key[::-1]

def test_reverse_pass() -> None:
	assert reverse("foo") == "oof"

def test_reverse_fail() -> None:
	assert reverse("foo") == None
