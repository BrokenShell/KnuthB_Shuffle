#pragma once
#include <random>
#include <algorithm>


auto random_integer(long long a, long long b) -> long long {
    static std::mt19937_64 Engine { std::random_device()() };
    std::uniform_int_distribution<long long> distribution{
        std::min(a, b), std::max(b, a)
    };
    return distribution(Engine);
}
