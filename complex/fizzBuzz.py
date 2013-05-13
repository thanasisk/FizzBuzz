#!/usr/bin/env python
import ctypes

LIB_PATH="./fizzbuzz.so.1.0"
fbuzz_lib = ctypes.CDLL(LIB_PATH)
start = ctypes.c_int(1)
end = ctypes.c_int(100)
fbuzz_lib.fizzBuzz(start, end)


