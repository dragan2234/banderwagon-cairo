# banderwagon-cairo
Project for OnlyDust contributors - creating banderwagon scalar multiplication and point addition in cairo.

Cairo0:

Idea is to get the ec_add and scalar mul operations from [Garaga] (https://github.com/keep-starknet-strange/garaga/tree/main/src/bn254) bn245 implementations and measure cairo steps for bandersnatch/banderwagon.

This should be done in this order:

1. Create bandersnatch ec_add and scalar_mul, test it.
2. Create banderwagon wrapper for bandersnatch explained here: https://hackmd.io/@6iQDuIePQjyYBqDChYw_jg/BJ2-L6Nzc and https://hackmd.io/@6iQDuIePQjyYBqDChYw_jg/BJBNcv9fq
3. Benchmark cairo steps for ec_add, scalar_mul and multi_scalar_mul.


Cairo1:
tbd.


Bandersnatch curve description: https://eprint.iacr.org/2021/1152.pdf

Potential use-case for the project: https://hackmd.io/@gagadrupal/SyWuSfpp3

Explanation of garaga framework: https://docs.google.com/presentation/d/19OYje-gWUryjMalDbYYzBizb9rLkHGUEo6kj2kpE9V4/edit#slide=id.p

Youtube: https://www.youtube.com/watch?v=ttJ2z5KnhFA&t=12s&ab_channel=StarkNetCC

Bandersnatch implementation: https://github.com/asanso/Bandersnatch
