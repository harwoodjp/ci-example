def reverse(key: str) -> str:
	return key[::-1]

def test_reverse_pass() -> None:
	assert reverse("foo") == "oof"
