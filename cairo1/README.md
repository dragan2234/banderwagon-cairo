Cairo 1 bandersnatch MSM roadmap:

- implement Affine twisted edwards bandersnatch curve point addition and scalar multiplication

- formulas: https://hyperelliptic.org/EFD/g1p/auto-twisted.html

- point addition:

Affine addition formulas: (x1,y1)+(x2,y2)=(x3,y3) where
  x3 = (x1*y2+y1*x2)/(1+d*x1*x2*y1*y2)
  y3 = (y1*y2-a*x1*x2)/(1-d*x1*x2*y1*y2)


- point doubling:

Affine doubling formulas: 2(x1,y1)=(x3,y3) where
  x3 = (x1*y1+y1*x1)/(1+d*x1*x1*y1*y1)
  y3 = (y1*y1-a*x1*x1)/(1-d*x1*x1*y1*y1)


- Affine negation formulas: -(x1,y1)=(-x1,y1).


Scalar multiplication:

Section 6, algorithm 16 and 17: https://eprint.iacr.org/2022/586.pdf