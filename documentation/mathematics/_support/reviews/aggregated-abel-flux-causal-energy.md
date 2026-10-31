# Complete Abel flux and exact causal energy: uniform cell comparison

Local attribution: grwtsk contributors.
Source identities: `DyadicSignedResidueWaveform.lean` at
`e637be1a51a18d4b7e1d74f8b7aa56e60972c94d`, and its imported
`LogarithmicPickupSeries.sampleResidue` and `sampleResidue_succ_sub`.
This is a mathematical derivation, not a Lean receipt. All formal verification
facets for this new comparison are NOT_RUN.

## Aggregate first: modulus dependence disappears exactly

For every integer d>=1, let

    A_d(N)=sum_{r=0}^1 sum_{a mod d²} Q_{r,a}(N),
    M(N)=sum_{n=1}^N mu(n),
    Q(N)=sum_{n=1}^N mu(n)/sqrt(n)-M(N)/sqrt(N).

The published finite reconstruction is A_d(N)=Q(N). Hence

    A_d(N)=A_e(N) for every d,e>=1,
    A_d(N+1)-A_d(N)=M(N)*(N^(-1/2)-(N+1)^(-1/2)).

These are exact uniform identities even for moduli chosen separately at each
N or time, with no coprimality or modulus-size restriction. All residue classes,
squareful zeros and both endpoint parities are retained. Compatible precision
lifts must reconstruct these same integer coefficients before taking real sums;
a finite precision projection alone does not assert this reconstruction.

Uniformity in d does not bound the magnitude of Q. It identifies all modulus
presentations as the same unresolved scalar arithmetic flux.

## Exact causal interpolation, not a sampled surrogate

Fix N>=1 and log N<=u<=log(N+1). Put

    a=N^(-1/2), b=(N+1)^(-1/2), Delta=a-b>0,
    theta=(a-exp(-u/2))/Delta,  0<=theta<=1.

The newest coefficient at u=log(N+1) has zero response. The original causal
sum therefore satisfies at every point of this closed cell

    F(u)=2*(Q(N)+(a-exp(-u/2))*M(N))
        =2*((1-theta)*Q(N)+theta*Q(N+1)).

Thus the transfer does not replace the causal weights by fixed endpoint
weights. It uses their exact interpolation; the sign of M(N) is unrestricted.

## A two-sided cell estimate with absolute constants

Let ell_N=log((N+1)/N). The change of variables above has

    du/dtheta=2*Delta/(a-theta*Delta).

Its maximum divided by its minimum equals a/b=sqrt(1+1/N)<=sqrt(2)<=2.
Its integral on [0,1] is ell_N. Consequently

    ell_N/2 <= du/dtheta <=2*ell_N.

For any real x,y,

    integral_0^1 ((1-theta)*x+theta*y)^2 dtheta
      =(x²+xy+y²)/3,
    (x²+y²)/6 <=(x²+xy+y²)/3 <=(x²+y²)/2.

Combining these exact facts yields, uniformly for every N>=1,

    (ell_N/3)*(Q(N)^2+Q(N+1)^2)
      <=integral_{log N}^{log(N+1)} F(u)^2 du
      <=4*ell_N*(Q(N)^2+Q(N+1)^2).

Opposite signs of consecutive samples cause no exception: the positive
quadratic form has smallest eigenvalue 1/6. No positivity of the signed flux
or independent-class variance has been assumed.

Define, for K>=1,

    J(K)=sum_{N=1}^{K-1} ell_N*(Q(N)^2+Q(N+1)^2),
    H(T)=integral_0^T F(u)^2 du.

Summing the cell comparison gives the genuinely uniform transfer

    J(K)/3 <= H(log K) <=4*J(K).

The constants are independent of K, every residue modulus, all source
coefficients, and all active shift ranges. At K=1 both sides vanish.
This controls the transfer and its losses; it does not prove small J(K).

## The exact discrete supplier and its rate transfer

The requested dyadic energy target is equivalent to

    for every delta>0 there exists C_delta>=0 such that
    J(2^j)<=C_delta*2^(delta*j) for every j.

The upper cell inequality transfers this supplier to H with constant 4*C_delta.
Conversely the lower cell inequality transfers an H bound to J with constant
3*C_delta. There is no extra power of K and no logarithmic or modulus loss.

The elementary paid increment estimate in the existing source gives

    |Q(N+1)-Q(N)|<=1/(2*sqrt(N+1)),  Q(1)=0.

Since 1/(2 sqrt(n))<=sqrt(n)-sqrt(n-1), it follows that

    |Q(N)|<=sqrt(N)-1.

This is unconditional and uniform in all modulus presentations. Since
ell_N<=1/N, it gives the explicit bounds

    J(K)<=3*(K-1),   H(log K)<=12*(K-1).

Indeed Q(N)^2+Q(N+1)^2<=2N+1, so each weighted summand is at most 3.
These linear bounds do not give the all-positive-rate target.

## Growing shifts remain inside the exact discrete energy

Writing v_{n,N}=n^(-1/2)-N^(-1/2) for 1<=n<=N gives

    Q(N)^2=sum_{m,n<=N} mu(m)mu(n) v_{m,N}v_{n,N}.

The diagonal and every positive gap g=n-m are retained:

    Q(N)^2=sum_{n<=N}mu(n)^2 v_{n,N}^2
       +2 sum_{g=1}^{N-1} sum_{m=1}^{N-g}
          mu(m)mu(m+g)v_{m,N}v_{m+g,N}.

Even gaps produce the two same-parity sectors; odd gaps produce both mixed
sectors. Inserting the exact parity/residue partition changes no sum.
No termwise absolute-value estimate or fixed-g limiting theorem proves the
needed cancellation between the diagonal and the complete off-diagonal sum.

Equivalently, expanding the exact flux increments retains cross terms between
all increment times. Summable or logarithmically bounded squared increments
alone cannot bound the square of the accumulated signed flux.

## Disposition

The exact causal transfer, modulus independence and uniform constants above
are derived. The new arithmetic supplier J(2^j)<=C_delta*2^(delta*j) remains
open, as does the equivalent requested energy estimate. No RH proof, growing-
shift cancellation theorem or Lean acceptance is claimed. The quarter-unit
curvature allowance and polynomial diagonal loss retain their existing scope.
