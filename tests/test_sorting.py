from src.sorting import sort

def test_sort():
    numbers = ["2", "1", "3"]
    assert sort(numbers) == ["1", "2", "3"]