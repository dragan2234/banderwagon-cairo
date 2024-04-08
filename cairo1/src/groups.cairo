


#[derive(Copy, Drop)]
struct Affine<T> {
    x: T,
    y: T
}


trait ECGroup<TCoord> {
    fn one() -> Affine<TCoord>;
}

trait ECOperations<TCoord> {
    fn pt_on_slope(self: @Affine<TCoord>, slope: TCoord, x2: TCoord) -> Affine<TCoord>;
    fn add(self: @Affine<TCoord>, rhs: Affine<TCoord>) -> Affine<TCoord>;
    fn double(self: @Affine<TCoord>) -> Affine<TCoord>;
    fn multiply(self: @Affine<TCoord>, multiplier: u256) -> Affine<TCoord>;
}
