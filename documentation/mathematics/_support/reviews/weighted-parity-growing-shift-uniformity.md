# Weighted parity buckets and growing-shift uniformity

Local attribution: grwtsk contributors.

## Exact source and scope

This calculation uses `DyadicWeightedResidueClasses.lean` at math commit
`1bcefcfe64ee00654f4d4e18c35deb63ce7f9aea`, the
actual `pickupResponse` in `MertensPrimitive.lean`, and the established
`SignedResidueGrowingShiftChowla.lean` representation. The latter exposes a
uniform budget as a **premise**, not as an established arithmetic bound.
This document supplies elementary finite identities and estimates, not a
Lean verification receipt or an unconditional subpolynomial estimate.

Write N=2^j, q=d², d>=1, and

    R_n(u)=2 max(n^(-1/2)-exp(-u/2),0), n>=1, u>=0.

This is the original causal response, including its zero value at birth.
Keep every Möbius coefficient, including squareful zeros. For 1<=g<N and
r in {0,1}, define the signed residue-prefix correlation

    A_{g,r,a}(t) = sum_{1<=m<=t, m mod 2=r}
        mu(m)mu(m+g) 1_{floor(m/2)+floor((m+g)/2)=a mod q}.

The allowed prefixes satisfy 0<=t<=N-g. No fixed-shift limit or implied
constant depending on g,d,r,a is substituted for this finite family.
Let

    S_{g,r,a}(u)=sum_{m=1}^{N-g} (A(m)-A(m-1)) R_m(u)R_{m+g}(u).

All sums here are finite, and the dependence on j,d is retained.

## All four buckets, with their original signs

For g=2h, m=2k+r, the residue is 2k+h mod q. Symmetry and the zero diagonal give

    B_{rr,a}(u)=2 sum_{1<=h,2h<N} S_{2h,r,a}(u).

For g=2h+1, the residue is 2k+h+r mod q. The two mixed buckets are

    B_{01,a}(u)=sum_{g odd,1<=g<N}(S_{g,0,a}(u)+S_{g,1,a}(u)),
    B_{10,a}(u)=sum_{g odd,1<=g<N}(S_{g,0,a}(u)+S_{g,1,a}(u)).

Their equality follows from exchanging the ordered endpoints. It permits
writing their sum as twice either one; it does not permit deleting them.
Thus the complete original cross density is

    crossDensity(j log 2,u)=2 sum_{g=1}^{N-1} sum_{r=0}^1 sum_{a mod q} S_{g,r,a}(u).

This includes both orientations, every residue and every positive gap.
No inversion of 2 modulo q is used, including when d is even.

## Time-uniform summation by parts

Fix g,r,a and put M=N-g, W_m=R_m(u)R_{m+g}(u).
For u>=0, W_m is nonnegative and nonincreasing in m: each positive-part
factor has those properties. With A(0)=0, the exact signed identity is

    S=A(M)W_M + sum_{t=1}^{M-1} A(t)(W_t-W_{t+1}).

This retains signed prefix correlations. In particular, any **proved**
one-sided envelope A(t)<=U(t) gives

    S<=U(M)W_M + sum_{t=1}^{M-1} U(t)(W_t-W_{t+1}).

It is unnecessary to replace mu(m)mu(m+g) by its absolute value.
If |A(t)|<=K holds for every allowed prefix with one K uniform in all
active g,d,r,a,N, then telescoping gives

    |S_{g,r,a}(u)| <= K W_1 <= 4K/sqrt(1+g), for every u>=0.

The last step is uniform in time and causal cutoffs. A different K for
each fixed shift or residue does not establish this assertion uniformly.
The sharper same-parity leading endpoint is m=1 for odd m and m=2 for
even m; the displayed estimate deliberately works for both.

Even this hypothetical uniform individual-prefix bound would give only

    |crossDensity| <= 32 q K sqrt(N)

by separate absolute aggregation, since sum_{g=1}^{N-1}(1+g)^(-1/2)<=2 sqrt(N).
Consequently, a fixed-shift o(N) statement, or an unpriced maximum over
shifts/residues, cannot be advertised as the desired all-positive-rate
endpoint bound. Signed aggregation across shifts/residues may be essential.

## An unconditional uniform signed estimate actually obtained

Let L=min(N,floor(exp u)). Then R_n(u)=0 for n>L and
0<=R_n(u)<=2/sqrt(n). With x_n=mu(n)R_n(u), the exact source is

    crossDensity=(sum x_n)^2-sum x_n^2.

Using |mu(n)|<=1, sum_{n<=L}1/n<=1+log L and
sum_{n<=L}1/sqrt(n)<=2 sqrt L, one obtains, for N>=1 and u>=0,

    -4(1+log L) <= crossDensity(j log 2,u) <= 16L <=16N.

These bounds are unconditional and uniform in d, residue regrouping,
shift inventories and time. They are a coarse signed estimate, **not** a
subpolynomial upper estimate. In particular they do not establish RH.
The original signed curvature term remains in the endpoint:

    E_j=integral_0^(j log 2) crossDensity(j log 2,u) du+curvature_j.

The coarse bound gives E_j<=16*2^j*j*log 2+curvature_j; it does not
justify discarding or bounding curvature without its own theorem.

## Curvature allowance and the nonnegative waveform energy

The source `DyadicModTwoPairLift.dyadicBirthSum_quarter_error` gives
|E_j-integral_0^T crossDensity|<=1/4, T=j log 2, via the existing
`PickupEndpointQuadrature.endpointSum_error`. This is an inspected source
statement, not a new kernel receipt. The signed curvature is therefore retained
exactly, with its already stated quarter-unit allowance.

Put F(u)=sum_{n<=floor(exp u)}mu(n)R_n(u),
D(u)=sum_{n<=floor(exp u)}mu(n)^2 R_n(u)^2 and
H(T)=integral_0^T F(u)^2 du. On 0<=u<=T the final inventory N=2^j
contains all active terms, including the zero-weight birth endpoints.
The sharper finite-sum bounds are

    -4 sum_{n=1}^L 1/n <= crossDensity
       <=4 (sum_{n=1}^L 1/sqrt(n))^2.

Since L<=exp(u), these imply crossDensity>=-4(1+u) and
crossDensity<=16 exp(u). Integrating and using the curvature allowance gives

    -4T-2T^2-1/4 <= E_j <=16(2^j-1)+1/4.

This improves the earlier coarse integrated upper bound by using causality
inside the time integral, rather than replacing every L(u) by N.
More structurally, 0<=D(u)<=4(1+u), so the exact square-minus-diagonal
identity gives

    H(T)-4T-2T^2-1/4 <= E_j <=H(T)+1/4.

Consequently the following two statements are equivalent on dyadic times:

    for every delta>0 there is C_delta>=0 such that
    E_j<=C_delta exp(delta T_j) for every j;

    for every delta>0 there is K_delta>=0 such that
    H(T_j)<=K_delta exp(delta T_j) for every j.

Indeed E_j<=H(T_j)+1/4 proves one implication. For the other,
H(T_j)<=E_j+4T_j+2T_j^2+1/4, and for every delta>0 the polynomial
4T+2T^2+1/4 is bounded by a finite constant times exp(delta T) for T>=0.
The constants are uniform in j. No lower estimate alone supplies either
upper estimate. Because H is nondecreasing, its all-positive-rate dyadic
bound also extends to all T>=0 by rounding T up to the next dyadic time;
the bounded time gap contributes only an exponent-dependent constant.

Thus the arithmetic supplier must improve the energy of the complete
signed waveform. The nonnegativity of H is an exact identity here; it does
not justify replacing H by separate positive residue-bucket variances.
The four parity sectors and the original time-dependent weights still
have to be summed before claiming the required cancellation.

## Exact remaining arithmetic obligation

A successful signed method must control the complete aggregate

    2 integral_0^(j log 2) sum_{g=1}^{N-1} sum_{r=0}^1 sum_{a mod q}
      [ A_{g,r,a}(N-g) W_{N-g}
        +sum_{t=1}^{N-g-1} A_{g,r,a}(t)(W_t-W_{t+1}) ] du
      +curvature_j

by C_delta*N^delta, for every delta>0 with a single C_delta independent
of j and all chosen active arithmetic parameters. Both odd-gap parity
channels remain inside this expression. This is the original endpoint,
not an estimate already proved by the finite representation. A proof needs
new arithmetic cancellation or an applicable theorem with exactly this
joint uniformity and aggregation; no such theorem was established in the
inspected source. The weighted transport above does not discharge it.

Compilation, fresh kernel replay, expected-interface checks and transitive
axiom audit: NOT_RUN. No native job, dependency migration or root import
promotion is part of this calculation.

## Formal target implementation

The source candidate
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/SignedWaveformEnergyTarget.lean`
defines `GRWTSK.NumberTheory.SignedWaveformEnergy.UniformSignedWaveformEnergyBudget`
with the exact quantifiers above and the existing `moebiusReal` and
`pickupResponse`. Its representation theorems retain 00, 01, 10 and 11
inside the original real square and integral. The static profile is
`documentation/mathematics/_verification/targets/signed-waveform-energy.json`.
The target has no proof, instance or added axiom. Compatible precision lifts
remain a source-preservation requirement, not a replacement for the real
waveform. Source publication is authorized; every formal verification facet remains NOT_RUN.

## Integration with the published residue waveform

The upstream source at `e637be1a51a18d4b7e1d74f8b7aa56e60972c94d`
provides `DyadicSignedResidueWaveform.completeResidueEnergy` and the open
`AllRateResidueEnergy d`. The local
`SignedWaveformEnergyResidueBridge.lean` candidate identifies the literal
waveform with `wholePickup`, matches both energies at dyadic times, and
transports the all-positive-rate quantifiers using `dyadic_rate`. Its RH
return explicitly assumes `UniformSignedWaveformEnergyBudget`.
No arithmetic estimate is proved. The adapter and original local target
remain additive; no upstream source is overwritten. Publication is human-authorized after explicit removal of the stale shared
Git index lock.
All formal verification facets remain NOT_RUN. Upstream finite tests do
not verify these additional bytes.
