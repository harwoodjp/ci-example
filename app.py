def reverse(key: str) -> int:
	return key[::-1]

def test_reverse_pass() -> None:
	assert reverse("foo") == "oof"
