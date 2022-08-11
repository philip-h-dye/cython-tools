# distutils: sources = cy_tools_samples/with_c_code/mymath.c
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# IMPORTANT: you must include this line to get mymath.c module compiled in the call_mymath.pyx (path must be relative to project root!)
#            comma separated source is allowed.
#                 otherwise you will have to setup dynamic linking https://github.com/cython/cython/tree/master/Demos/libraries

"""
Simple example how to include external .c code

Cython Tools run command:
cytool run cy_tools_samples/with_c_code/call_mymath.pyx@call_sinc
"""

cdef extern from "mymath.h":
    double sinc(double)


cpdef call_sinc():
    print('Calling mymath: sinc(10)')
    print(sinc(10.0))