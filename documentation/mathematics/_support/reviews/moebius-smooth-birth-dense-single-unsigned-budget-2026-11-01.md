# One unsigned error budget for exact smooth dense Möbius packet

Local mathematical attribution: grwtsk contributors. Research continuation 2026-11-01.
Formalization assistance: OpenAI ChatGPT.

## Original target and signed finite accounting

The unchanged source is the original integer-indexed Möbius endpoint
`pickupCross T`, its real causal kernel `pickupResponseGram T m n`,
original endpoint index set `endpointIndex T`, and the existing
`putnamRateGapSet ε T`. The dense remainder is the exact original
`pickupCross - endpointGapSetCross` with both ordered orientations
and the diagonal excluded.

The previous smooth-birth result in
`MoebiusSmoothBirthSectorTransport.lean` bounded complete and
short-gap source changes separately, obtaining a conservative 2K.
This increment first proves the exact generic finite subtraction
identity, for arbitrary finite S, gap set A, and signed kernel f:

  sum_(m,n in S, m!=n) f(m,n)
  - sum_(m,n in S, m!=n, dist(m,n) in A) f(m,n)
  = sum_(m,n in S, m!=n, dist(m,n) notin A) f(m,n).

No unordered collapsing occurs. Both original dense and smooth dense
sums are individually mapped to the SAME ordered complement.
Subtracting yields the exact SOURCE kernel difference on that
complement, without separately charging the short-gap signed defect.

## Sharp single-budget inequality

For finite S, any A and |c(n)|<=1, assume a nonnegative pair
difference d(m,n)>=0 on S×S. Twice applying the finite triangle
inequality yields

  |sum_(m,n in S, m!=n,dist(m,n) notin A)
    c(m)c(n)d(m,n)|
  <= sum_(m,n in S) d(m,n).

This is source-faithful even when A depends on epsilon and T or
contains repeated distance decisions; ordered pairs still occur
once each. Diagonals are absent from the original left-hand side,
and occur only as nonnegative members of the dominating
UNSIGNED square on the right.

For the existing 0<=eta<=1 right-flat smooth step,
0<kappa<=1, h_n=kappa/n² and original r_n versus s_n,
all response kernels satisfy d=K_T-L_T>=0 at nonnegative T.
The previous independent analytic argument gives

  sum_(m,n in I_T)(K_T(m,n)-L_T(m,n))
     <= (32/3)*sqrt(e)*kappa²

for every T>=0, with the same fixed constant for ALL chosen epsilon.
Thus the **single complete error budget** gives the improved result

  |denseLongGapSource(epsilon,T)
     - smoothDenseLongGapSource(eta,kappa,epsilon,T)|
     <= (32/3)*sqrt(e)*kappa².

Unlike the previous algebraic two-budget presentation, this uses
the complete SOURCE kernel only once. It does not assume anything
about Möbius correlations or prime residue cancellation.

The new Lean source formalizes finite subtraction, signed
complement, arbitrary |c|<=1 finite nonnegative envelope,
original Möbius |mu|<=1, both exact source-to-complement
reconstructions, full dense signed defect and conditional
one-K all-positive-rate equivalence on ONE FIXED G.
The two analytic premises (nonnegative actual smooth kernel
difference and its concrete infinite-time-integral uniform
bound) are explicit in the Lean theorem and not smuggled in
as `sorry` or as an unproved standalone axiom.
The paper proof establishes them analytically at the stated
smooth cutoff assumptions; their Lean statements remain
NOT_FORMALIZED for a fully unconditional formal composition.

## Independent hostile check

An exact-rational computational diagnostic enumerated N=1..13
for 30 random coefficient vectors, randomly selected gap sets
and nonnegative rational kernel differences per N (390 cases).
Every case satisfied the exact dense=complete-minus-gap identity
and the single unsigned envelope. This is finite diagnostic,
not kernel verification or a proof of the universal theorem.

Positive all-one coefficients are permitted in the generic
envelope; the inequality does NOT create arithmetic saving.
A kernel difference of indefinite sign would make the
nonnegative envelope inapplicable, and a smoothing multiplier
outside [0,1] cannot be charged without a new bound.
The source's original T>=0 and cutoff window are explicit.
No relation between Euclidean Kakeya tube maximal operators
and these signed arithmetic indices is asserted.

## Additional critical-width research direction (not a new Lean theorem)

The current width h_n=kappa/n² is much narrower than the
minimum width required for an ALL-POSITIVE-RATE smoothing
allowance. Repeating the elementary unsigned envelope with
h_n=kappa/sqrt(n) gives

  0 <= unsignedFullDefect(T)
     <= 8*sqrt(e)*kappa² * sum_(1<=n<=exp T) 1/n
     <= 8*sqrt(e)*kappa²*(1+T),

because local response error is <= h_n/sqrt(n), the birth
support width is h_n, and the complete positive response
mass is <=4 sqrt(e*n) on its support. This is POLYNOMIAL
rather than uniform in T and hence still sufficient for
EVERY positive exponential rate. For general h_n=kappa/n^a
and 0<kappa<=1, the same direct envelope is
8 sqrt(e) kappa² sum_(1<=n<=exp T) n^(-2a):
uniform for a>1/2 and O(1+T) at a=1/2.
This is a threshold of the **absolute smoothing-error proof**,
not a necessary condition for other representations or
a Kakeya/RH analytic estimate. No Lean theorem currently
supplies these critical-width bounds.

## Consumer and formal acceptance boundary

Primary consumer:
`GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof.DenseLongGapAllRateOn`
and its unchanged conditional RH return via one affinely
frequent set G. A fixed-rate bound or changing G remains
insufficient. The present result only identifies an exact
equivalent smooth dense challenge; neither side is established.
The existing ratio-two/three negative signed sectors and
elliptic mixed/rough residuals remain unchanged.

Source:
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSmoothBirthDenseSingleBudget.lean`.
Lean v4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
LEAN SOURCE PROOF CANDIDATE; actual compilation NOT_RUN,
expected declaration types NOT_RUN, fresh independent kernel
replay NOT_RUN and transitive axiom audit NOT_RUN. RH OPEN.
No hardware, native verifier, scheduler or independent
OpenAI/math verification run. The finite absolute envelope
and positive time smoothing arguments are elementary and
not claimed original; the specific source-bound single-budget
return avoids prior double-charging in this project.
