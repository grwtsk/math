# Independent OpenAI and Anthropic perspectives on the signed dyadic RH source

Local mathematical attribution: grwtsk contributors.
Classification: imported public mathematical research / analytical comparison /
new source-specific elementary Lean proof candidates / finite evidence /
unresolved analytic and verification obligations.

## Exact revision and source provenance

Research baseline: grwtsk/math/main at
85387eae8ba855c2bc4d11335a9d6dc6db7265a2.
Pinned original GRWTSK mathematical blobs, unchanged:

- PickupDyadicEndpoint.lean: bf1d3ccbbe7a49033fdff0ab11176d589a1a7f31
  (the original dyadicBirthSum, DyadicBirthBound and conditional RH return).
- DyadicSignedHodgeShell.lean: 53feefc61724a1e5d8af696fd448fac5d765a0f1
  (same complete original signed Möbius response, mean and residual shell).
- DyadicSignedTwoTermCohomology.lean: 418fe814340faa40c763fcc7252833ab80cd65d6
  (complete PadicInt 2 signed incidence complex, H0 and H1).
- DyadicModTwoPairLift.lean: 425b5074e96f9aecb459a9aa1270c22da59cf790
  (same signed originalPair, complete digit/carry real-response return).
- PrimePairSymplecticShell.lean: f84121085a1d0c9854880a078d83fc802d9351a4
  (area-preserving auxiliary squeeze, not a PDE estimate).

Original mathematical zero source is Mathlib's riemannZeta and its
GRWTSK canonical RiemannHypothesis predicate. No new zero is invented.

## A. OpenAI mathematical inputs: correct theorem scope

Public source: openai/math at
4eaee87548250b2682affda7d05d947c05554bae.

A1. Family 003, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane
Re(s)>7/8*, September 30, 2026:
https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/docs/003.md
and exact comparator statement
https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/ComparatorChallenges/QuasiRiemannHypothesis.lean
(OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re).
A comparator Solution module states the zero-free result. This does
not imply RH, nor does it give GRWTSK's remaining all-positive-rate
dyadic arithmetic estimate without a proved quantitative analytic
comparison. No external OAI theorem was imported into the GRWTSK build.

A2. Family 007, *Ordinary two-point correlations of multiplicative
functions*, September 24, 2026:
https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/docs/007.md
with precise comparator declarations in
lean/ComparatorChallenges/OrdinaryTwoPointCorrelations.lean.
Its explicit Liouville saving is for FIXED nonproportional
affine forms; its corrected Elliott comparison is conditional
on a suitable UNIFORM nonpretentiousness hypothesis.

GRWTSK's actual source is different: originalPair(m,n,u)
= μ(m)μ(n)r_m(u)r_n(u), m!=n, with BOTH orientations,
N=2^j and EVERY shift h=|m-n| up to N-1.
It is NOT Liouville-only or restricted to one pair of
fixed forms. It includes the original squarefree mask
μ(n)=λ(n)μ(n)^2 and all zero squareful entries.

The new source candidate DyadicWeightedCorrelationInterface.lean
defines the COMPLETE signed rows and proves that the original
crossDensity is their exact sum. It transports any TRUE signed
rowwise upper majorant into the original pointwise density
without forcing absolute values. This is a consumer interface:
it does not invent a useful arithmetic upper majorant.

**Quantifier and rate obstruction:** a fixed-shift estimate with
saving O(X/(log X)^c) cannot simply be summed over O(X)
different shifts with X-dependent implied constants. Even a
single uniform X/(log X)^c scale remains of magnitude
2^j/j^c at X=2^j, which is NOT O(2^(δ j)) for arbitrary
δ in (0,1). A GRWTSK RH supplier needs genuinely stronger
weighted arithmetic cancellation or additional structural
estimates for the COMPLETE signed aggregate.

Exact analytic identity (proved by the bijection (m,n)↔(m,h=n-m)
on upper triangular pairs, not new Lean):
for N=2^j and fixed real u,

  crossDensity(j log 2,u)
    = 2 sum_{h=1}^{N-1} sum_{m=1}^{N-h}
        μ(m)μ(m+h) r_m(u)r_(m+h)(u).

Both orientations produce the factor 2. There are NO new
diagonal, zero-coefficient, prime-power, or endpoint omissions.
This formula is a primary mathematical derivation; a matching
Lean offset-reindexing theorem remains future work.
The existing exact Lean row identity is the current source
consumer.

## B. Anthropic mathematics: spectral certificate and information loss

Public source: anthropics/formal-math at
16a5ce41304fcdaea4e0be7c132e1c361dc26da5;
Zeta23 accompanies Levent Alpöge and Ralph Furman,
*More than two thirds of the zeta zeros are simple and on
the critical line*, arXiv:2608.13637 (2026).

The Zeta23 main project states that at least 2/3 of the
nontrivial zeros are simple AND on the critical line and
at least 5/6 are distinct. Its multiplicity-aware method
uses zero-side rank, trace and Frobenius norm. Source:
https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/Zeta23/FinalMult.lean
The tightness argument in
zeta23/Zeta23/ZeroSide/TightMult.lean demonstrates that
trace/Frobenius-square data can fail to distinguish a
double on-line zero from a tight off-line pair configuration.

This is an ANALOGOUS measurement limit, not a theorem
transferred to GRWTSK's different Möbius incidence
operator. It does not imply a positive-rate signed
dyadic bound or provide a map between zeros and Möbius
cohomology by itself.

A new GRWTSK source candidate,
DyadicMarkedSignGauge.lean, proves the direct obstruction
on the actual local arithmetic operator.

Let a:I→R, K_a(i,k)=a_i a_k (i!=k), else 0, and
e:I→R with e_i²=1. Put D_e=diag(e_i).
Then, exactly,

  K_(e·a) = D_e K_a D_e,    D_e²=I.

Hence the two associated unmarked finite cochain
operators are conjugate. In particular their abstract
kernel, cokernel, characteristic polynomial and
unmarked spectral trace do not determine which sign
list was used. The global flip a↦-a even leaves K
LITERALLY unchanged.

But a labelled moment at the same original state,
  M_a(x)=sum_i a_i x_i,
changes to -M_a(x) under a global sign flip.
The new module retains the exact ORIGINAL signed
2-adic sourceCoefficient at each index and a distinct
real-weighted originalRealMark(j,u,n) equal to the
source Möbius causal response. No unproved
continuous additive map from Z_2 to R is assumed.

**Finite hostile test:** for lists a=(1,-1,0,1) and
b=(1,1,0,-1), the signed matrices are different but
their common characteristic polynomial is
t(t-2)(t+1)^2. Independent exact rational/integer
checks of diagonal conjugation, invertibility and
marked-moment sign were performed for 9,600 assertions
on source-size 1..12. This is finite evidence, NOT
a Lean build or kernel acceptance.

## C. What a joint bridge would have to prove

The actual GRWTSK endpoint statement is

  ∀δ>0 ∃Cδ≥0 ∀j,
    dyadicBirthSum(j) ≤ Cδ · 2^(δj).

Its source is NOT a positive Gram or an unmarked
cohomology class. The existing equality is

  dyadicBirthSum(j)
    = ∫_0^(j log 2) crossDensity(j log2,u) du
      + signedCurvature(j),

with the exact source-derived curvature and
quarter-unit absolute allowance already recorded.
The remaining arithmetic task is the all-positive-
rate upper bound on the SIGNED aggregate, not
another representation or a cohomology identity.

A productive joint research sequence would be:

A. Derive UNIFORM, response-weighted, complete-row
or complete-shift arithmetic cancellation from the
original Möbius multiplicative source. Preserve
zero squareful terms, all orientations, variable
shifts, endpoints and original curvature. Compare
OpenAI family 007 only at its actual hypotheses,
and show the new estimate is strong enough at
arbitrarily small positive rates.

B. Produce a genuinely source-sensitive ZERO-SIDE
operator or spectral observation with an exact
comparison from those signed arithmetic weights.
Do not use the unmarked cohomology group or trace
of K_j to recover a sign pattern that its gauge
symmetry provably erases. Compare the Anthropic
rank–trace technique as a method, not a pre-proved
claim about this operator. Pay for all multiplicity
and off-line pair obstructions.

C. Independently prove the source-to-zero analytic
return, the uniform boundary/cusp/PDE conditions
if any are actually invoked, and the specified
arithmetic majorant. Use the already established
conditional RH endpoint theorem ONLY after the
all-positive-rate premise is discharged.

D. Formal assurance: use the latest GRWTSK exact
commit, Lean v4.34.1 and pinned Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
The external OpenAI Lean project also uses Lean
v4.34.1 but is not necessarily on the same
Mathlib revision; Anthropic Zeta23 uses Lean
v4.33.0-rc2 and Mathlib
51e6992efd06126df61a496bebf8f49482a4e129.
No imports should bypass these source/typing
mismatches or original licensing and attribution.

For independent verification, Anthropic's
Challenge.lean (trusted statement) / Solution.lean
(untrusted proof) and comparator.json require only
propext, Quot.sound and Classical.choice and set
enable_nanoda=true. Its published AUDIT.md records
build and axiom checks. OpenAI provides analogous
comparator configs for families 003 and 007, with
enable_nanoda=false in the inspected configurations.
GRWTSK's NEW source files remain source proof
candidates, with COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. Source publication
does not transfer any external kernel certificate.

## Independence and source provenance

- OpenAI mathematics and Anthropic mathematics:
  upstream public research, not GRWTSK-authored claims.
  Their written Lean statements were inspected as
  sources; their full proof dependency chains were
  not replayed in this increment.
- The gauge conjugation and row sum:
  elementary source-specific mathematical lemmas,
  new Lean proof candidates in GRWTSK; no independent
  prior-art novelty claim.
- The shifted-bijection formula and fixed-shift rate
  obstruction: analytical derivations, NOT yet Lean
  formalizations.
- Finite Python integer/Fraction checks: tests, not
  Lean proof or confirmation of the RH consequence.
- RH endpoint: genuinely unresolved all-positive-rate
  arithmetic estimate, even if all source equivalences
  and the external analytic statements were verified.
- No new direct GitHub action or external verification
  task is authorized by citations to these sources.
