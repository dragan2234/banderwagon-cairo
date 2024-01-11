# banderwagon-cairo
Project for OnlyDust contributors - creating banderwagon scalar multiplication and point addition in cairo.

Idea is to get the ec_add and scalar mul operations from [Garaga] (https://github.com/keep-starknet-strange/garaga/tree/main/src/bn254) bn245 implementations and measure cairo steps for bandersnatch/banderwagon.

This should be done in this order:

1. Create bandersnatch ec_add and scalar_mul, test it.
2. Create banderwagon wrapper for bandersnatch explained here: https://hackmd.io/@6iQDuIePQjyYBqDChYw_jg/BJ2-L6Nzc and https://hackmd.io/@6iQDuIePQjyYBqDChYw_jg/BJBNcv9fq
3. Benchmark cairo steps for ec_add, scalar_mul and multi_scalar_mul.