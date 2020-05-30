#!python3
#distutils: language = c++


__all__ = ("shuffle", )


cdef extern from "RandomInt.hpp":
    long long _random_integer "random_integer"(long long, long long)


def shuffle(array):
    """ Knuth B Shuffle Algorithm
    Reverse Order Random Swap Backwards == Cache friendly!
    Destructive, in-place shuffle.
    @param array :: mutable sequence of values.
    @return :: None
    """
    size = len(array) - 1
    for i in reversed(range(size)):
        j = _random_integer(i, size)
        array[i], array[j] = array[j], array[i]
