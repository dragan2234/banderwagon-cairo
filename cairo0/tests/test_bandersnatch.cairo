%lang starknet

from src.bandersnatch.g1 import G1Point, g1
from protostar.asserts import (
    assert_eq,
    assert_not_eq,
)

@external
func test_bandersnatch() {

    assert 1 = 1;
    return ();
}

@external
func test_bandersnatch_fail() {

    assert_not_eq(0,1);
    return ();
}
