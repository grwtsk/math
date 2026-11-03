# Adaptive Möbius error support orthogonality and physical-time Hölder

Date: 2026-11-02. Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Status: SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

## 1. Original signed source and exact defect support

Let r_n(u) be the unchanged causal pickupResponse, with original
coefficient mu(n). Let s_n(u) be CMAdaptiveDisjointBirth.adaptiveResponse
with h_n=1/(n+1). The *signed source defect* is
  e_n(u) = mu(n)*(r_n(u)-s_n(u)).
For every n>=1, e_n(u)=0 when u<log n, and e_n(u)=0 when
u>=log n+h_n. These follow from the original causal definition and
smoothTransition's exact zero/one regions. The existing window theorem
gives log n+h_n <= log(n+1).
Therefore if 1<=n<m, a nonzero e_n(u) forces
  u < log n+h_n <= log(n+1) <= log m,
whereas nonzero e_m(u) forces u>=log m: impossible.
So e_n(u)*e_m(u)=0 for EVERY u and every distinct positive n,m.

The published candidate source formalizes this pairwise support implication,
its zero-before and zero-after facts, and a source-independent finite
square-of-sum lemma. For the ACTUAL full dyadic inventory it derives the
pointwise identity
  adaptiveErrorWave(j,u)^2
   = sum_(n=1..2^j) e_n(u)^2,
with no dropped original-source arithmetic coefficient.

This disjointness applies to the adaptive defect ONLY. It does not kill
the original coherent Mobius cross-energy. The complete original signed
wave keeps all its parity/residue and ordered cross terms.

## 2. Remaining integral return and local cell calculus

The existing source has
  AtomicBirthCellEnvelope : Prop
    forall n>=1, integral_(log n..log(n+1)) e_n(u)^2 du
      <= h_n^3/(3n)
  OriginalErrorCellReturn : Prop
    forall j, integral_(0..T_j) adaptiveErrorWave(j,u)^2 du
      <= sum_(n=1..2^j) integral_(log n..log(n+1)) e_n(u)^2 du.
The pointwise disjoint identity isolates the exact integrand needed
for the second proposition. The remaining formal steps are
intervalIntegral.integral_finsetSum on the source inventory, support
localization of each nonnegative e_n^2 to its actual log cell, and
the event-at-terminal-cell cutoff. Those are purely analytic; no
Mertens, RH, large sieve or Möbius cancellation supplier is involved.

The scalar cell estimate follows from u=log n+s and
  0 <= e_n(log n+s)^2 <= s^2/n, 0<=s<=h_n,
using Real.exp(-s/2) >= 1-s/2, 0<=theta<=1, |mu(n)|<=1.
Then integral_0^h_n s^2/n ds=h_n^3/(3n).
The existing finite reciprocal theorem proves
  sum_(n=1..N) h_n^3/(3n) <=1/12.
The full global integral <=1/12 is STILL NOT a checked Lean theorem.

## 3. Genuine time-Hölder as a pinned Mathlib eLpNorm instance

New candidate CMAdaptivePhysicalTimeHolderLp directly uses
  MeasureTheory.eLpNorm_le_eLpNorm_mul_rpow_measure_univ
from pinned Mathlib MeasureTheory/Function/LpSeminorm/CompareExp.lean,
at p=2,q=2k and physical Lebesgue measure restricted to [0,T_j].
Since adaptiveSmoothWave j is C-infinity and hence measurable, it gives
  ||F_sm,j||_(L2([0,T_j]))
    <= ||F_sm,j||_(L2k([0,T_j]))
       * volume([0,T_j])^(1/2-1/(2k)).
This is a quantitative finite-measure theorem; no arithmetic supplier.
The next formal gate converts ENNReal eLpNorms to actual real-time integrals
and combines the previously published signed_kfold_trace_cauchy:
  |F_sm,j(u)|^(2k)
    <= [k(2^j-1)+1] * signedTupleMoment(k,j,u).

The mathematical consequence, still subject to that Lean conversion, is
  H_sm(T_j)^k <= T_j^(k-1) q I_(k,j),
  I_(k,j)=integral_(0..T_j) signedTupleMoment(k,j,u).
With a fixed k selected for every requested positive rate, an original
arithmetic moment bound could return the same pickup energy at all rates.
The arithmetic FlexibleSignedTupleMomentProfile remains OPEN.

## 4. Hostile controls and acceptance

No replacements: source mu(n) to |mu(n)|; full-index n to residue-only
phase; source signed wave to its nonnegative spatial average; the whole
original cross-energy to the disjoint *error* cross-energy; infinite
time integral to an unproved finite-cell sum; eLpNorm with normalization
as probability measure. Do not infer RH from source representation.

No Lean/Lake executable was found in this conversation runtime. These are
source proof candidates, not kernel-accepted facts. Required review:
pinned Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612,
expected theorem types, fresh kernel replay, full import closure, transitive
axiom/opaque/native helper audit, and separately completed integral lemmas.
