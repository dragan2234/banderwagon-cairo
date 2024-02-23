%lang starknet

// Attribution: Garaga tests of bn254: https://github.com/keep-starknet-strange/garaga/blob/main/tests/protostar_tests/bn254/test_g1.cairo

from src.bandersnatch.g1 import G1Point, g1
from src.bandersnatch.fq import BigInt3
from protostar.asserts import (
        assert_eq,
        assert_not_eq,
        )

from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.registers import get_fp_and_pc

func __setup__() {

    %{
        import subprocess
        import random
        import functools
        import re
        from starkware.cairo.common.cairo_secp.secp_utils import split

        def rsetattr(obj, attr, val):
            pre, _, post = attr.rpartition('.')
            return setattr(rgetattr(obj, pre) if pre else obj, post, val)

        def fill_element(element:str, value:int):
            s = split(value)
            for i in range(3): rsetattr(ids,element+'.d'+str(i),s[i])

        def parse_fp_elements(val):
            val = int(val[8:-3])

    %}
    return ();
}

@external
func test_bandersnatch_random() {

    assert 1 = 1;
    return ();
}

@external
func test_bandersnatch_fail() {

    assert_not_eq(0,1);
    return ();
}

//todo use ./scripts/bandersnatch_rust/target/release/bandersnatch_rust add 1 2 to get the result from the rust lib

@external
func test_nPoint_random{
    syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr, bitwise_ptr: BitwiseBuiltin*
}() {
    alloc_locals;
    __setup__();
    let (__fp__, _) = get_fp_and_pc();

    local g1x: BigInt3;
    local g1y: BigInt3;
    local ng1x: BigInt3;
    local ng1y: BigInt3;

    local n: BigInt3;

    %{
        cmd = ['./scripts/bandersnatch_rust/target/release/bandersnatch_rust', 'mul']+["1", "1"]
        print(cmd)
        out = subprocess.run(cmd, stdout=subprocess.PIPE).stdout.decode('utf-8')
        fp_elements = parse_fp_elements(out)
        assert len(fp_elements) == 6
        fill_element('g1x', fp_elements[0])
        fill_element('g1y', fp_elements[1])

    %}
    local G: G1Point* = new G1Point(&g1x, &g1y);
    g1.assert_on_curve(G);

    return ();
}
