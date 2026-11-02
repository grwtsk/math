# Critical-width original Möbius smoothing: kernel positivity and all-rate comparison

Local attribution: grwtsk contributors. Date: 2026-11-01.
Formalization assistance: OpenAI ChatGPT. Mathematical source and formal
acceptance are separate: the new Lean file is a SOURCE_PROOF_CANDIDATE.

## Exact problem and source

The unchanged source is r_n(u) in
`GRWTSK.RiemannHypothesis.CCC.pickupResponse`, original integer
inventory `endpointIndex T`, signed `pickupCross`, and the literal
Putnam dense complement
`denseLongGapSource ε T = pickupCross T -
endpointGapSetCross (putnamRateGapSet ε T) T`.
All original n, μ(n), prime powers, ordered orientations and
diagonal exclusion remain. In particular this is NOT a new
prime-residue modulus, an elliptic trace replacement, or an
independently generated Möbius correlation bound.

The earlier h_n=κ/n² smooth adapter and the one-budget finite
dense-complement theorem are unchanged. This source replaces only
the cutoff transition WIDTH with the critical h_n=κ/sqrt(n).

## Analytically proved actual-response inequality

Fix 0<κ<=1 and a C-infinity flat right step η satisfying
η(x)=0 for x<=0, η(x)=1 for x>=1 and 0<=η(x)<=1.
For every original integer n>=1 define

  s_n(u)=2(n^-1/2-exp(-u/2)) η(sqrt(n)(u-log n)/κ).

The function s_n is globally C-infinity in real u and identically
zero before birth. It equals the exact original r_n after
u>=log n + κ/sqrt(n), and for all u,

  0 <= s_n(u) <= r_n(u).

The source Lean module contains candidates for these source
properties. A further interval-integral comparison using
the original continuous response and smooth new response gives,
for all T>=0, m,n>=1,

  0 <= K_T(m,n)-L_T(m,n),

where K is the literal original Gram and L is the critical Gram.
No Möbius sign hypothesis is used. Unlike previous modules,
the new candidate directly attempts this kernel positivity
using the existing
`LiouvilleDoubleAbelAnalyticGates.pickupResponse_nonneg_positive`
and
`LiouvilleCausalPhysicalGramIntegrability.pickupResponse_product_intervalIntegrable`
rather than declaring kernel positivity as an external premise.

## Critical linear source budget: complete independent paper proof

Write h_n=κ/sqrt(n) (0<h_n<=1), and let Δ_n=r_n-s_n.
The cutoff and original causal definition imply Δ_n vanishes
outside [log n,log n+h_n] and

  0 <= Δ_n(u) <= (u-log n)/sqrt(n) <= h_n/sqrt(n)

inside this interval. This follows from 1-exp(-x/2)<=x/2
for x>=0. Consequently the unsigned error is localized at
every original integer birth (zero if n>floor(exp T)).

For u>=0, the complete original positive response mass obeys

  Σ_(1<=m<=exp u) r_m(u)
     <= 2 Σ_(m<=exp u) 1/sqrt(m)
     <= 4 exp(u/2).

On support of Δ_n, u<=log n+h_n<=log n+1, so the
positive total source mass is <=4 sqrt(e*n). Since 0<=s<=r,

  0 <= K_T(m,n)-L_T(m,n)
     = ∫_0^T [Δ_m(u)r_n(u)+s_m(u)Δ_n(u)] du.

Summing over the FULL ORIGINAL ordered square I_T², with
diagonal included only as a nonnegative MAJORANT, gives

  unsignedFullDefect(T)
     <= 2 Σ_(n<=exp T) ∫_0^T Δ_n(u)
                            [Σ_(m<=exp T) r_m(u)] du
     <= 8 sqrt(e) Σ_(n<=exp T) h_n²
     = 8 sqrt(e) κ² Σ_(n<=exp T) 1/n.

The elementary harmonic bound
Σ_(1<=n<=floor(exp T)) 1/n <= 1+T for T>=0 proves

  0 <= unsignedFullDefect(T) <= 8 sqrt(e) κ² (1+T).

The proof uses no RH, no signed cancellation, no Kakeya
maximal inequality, and no exterior smoothing theorem.
It establishes an exact arithmetic-free quantitative bound,
but the integral/summation/harmonic steps of this last
display have **NOT YET BEEN FORMALIZED IN LEAN**.
The Lean definition `CriticalUnsignedLinearBudget` is this
unproved, *specific real-variable statement*, not a
postulated research axiom. The existing source
`MoebiusEndpointGapLocalization.EndpointHarmonicBound`
also records the harmonic endpoint separately as a
research proposition; no false claim of its prior Lean
proof or verification is made.

## Consumer and fixed good-scale return

The new source:
- defines the literal critical smooth Gram and original-indexed
  signed dense complement;
- proves as a Lean source candidate the exact original-minus-critical
  complement identity and the signed one-budget envelope;
- develops a generic *linear-error* transport lemma using the
  existing `subexponentialUpper_of_polynomial`, preserving all
  positive rates and the identical scale set G;
- proves the fixed-G equivalence, conditional on the precise
  unsigned linear estimate above.

The resulting exact target is

  DenseLongGapAllRateOn G
    iff CriticalDenseAllPositiveRatesOn η κ G

for ANY fixed G, given the cutoff hypotheses and the
independent pure unsigned error bound. The separate
`AffineFrequent G` hypothesis remains required before
applying the existing conditional RH return.
Neither side of this equivalence has been independently
established. The remaining arithmetic target is still
the surviving complete squarefree signed long-gap source.

## Hostile and independent checks

At n=1, birth time is u=0. The real branch is
right-flat, while the UNSMOOTHED original has a
derivative jump. The construction does not claim that
r_n is itself C-infinity.
At n large, h_n->0 and cutoff derivatives become large;
pointwise C-infinity in u does NOT give uniform-in-n
Sobolev bounds. This differs from the quantitative
Euclidean wave smoothing result in OpenAI's 2026-10-25
Kakeya-related preprint, previously pinned to commit
4eaee87548250b2682affda7d05d947c05554bae.
The source cannot replace a Kakeya spatial dimension,
measure, tube-direction condition or Lp norm by n.

An independent numerical diagnostic evaluated the full
UNSIGNED original-vs-critical waveform square integral at
(N,κ)=(8,0.3),(16,0.7),(32,0.9) with T=log N.
The observed errors were approximately 0.0313963471,
0.3111336099 and 0.7628688989, respectively, below
the analytic bounds 3.65554136, 24.38219331 and
47.71064444. These are numerical quadratures with
finite support, not rigorous interval enclosures, Lean
kernel acceptance or proof of the universal estimate.

For widths κ n^(-a), the same absolute envelope uses
Σ_(n<=exp T)n^(-2a). The value a=1/2 is the threshold
for a polynomial allowance in THIS method; a<1/2
produces an exponential upper envelope from this proof.
This is not a theorem that slower smoothing is
mathematically impossible or that critical smoothing
forces arithmetic cancellation.

## Formal status, authority and next closure

Pinned math main and exact new Git objects are recorded by
the guarded publication/readback. New source:
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCriticalWidthSmoothBirth.lean`.

Lean v4.34.1; Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Parsing NOT_RUN; compilation NOT_RUN; expected_types NOT_RUN;
fresh independent kernel replay NOT_RUN; transitive axiom
audit NOT_RUN. Source contains no authored sorry or axioms,
which is NOT a transitive audit. No hardware implementation,
native Noe controller or scheduler operation has been invoked.
No new dense all-positive-rate sign estimate or RH proof.

The next bounded Lean obligation is to formalize the
specific `CriticalUnsignedLinearBudget`, using the
source's local birth cutoff bound, nonnegative real
integrals, finite sum interchange and the pinned harmonic
endpoint theorem/API. It is NOT sufficient to rewrite
this predicate as another free hypothesis.
