# Weighted exceptional shifts, pretentious stability, and complete-trace alternatives

Local attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

This note formalizes connections around obstruction
ordinary-chowla-growing-prime-supply-depletion-v1. It does not import a
large-values theorem, an all-shift Chowla theorem, a pretentious-correlation
theorem, or a geometric trace theorem.

## Existing source

The predecessor ordinary-chowla-prime-supply-depletion.md proves the finite
supply-loss average and the exceptional-shift cardinality bound

  #Bad <= J H /(epsilon H0).

That result is retained. Cardinality alone is not a bound for the original
Gram-weighted source.

## Connection A: weighted exceptional-shift / large-values route

For the exact original shift contribution C(r), the unpaid quantity is

  sum_(r in Bad) |C(r)|.

PickupExceptionalShiftConnections.exceptionalMass records this object abstractly.
The theorem exceptionalMass_le_card_mul_sup formalizes the elementary fact that
cardinality becomes useful only after a pointwise source bound is supplied.

finite_layer_cake_nat formalizes a finite discrete layer-cake identity for
integer-valued heights. Its intended use is structural: a genuine large-values
bound for level sets of the ORIGINAL shift contribution can be integrated to
control exceptional mass. It is not itself such a large-values theorem.

Literature connection: Larry Guth and James Maynard, *New large value estimates
for Dirichlet polynomials*, Annals of Mathematics 203 (2026), 755-840,
DOI 10.4007/annals.2026.203.2.6, arXiv:2405.20552. Their theorems concern large
values of Dirichlet polynomials. No source comparison from the pickup shift
function to their hypotheses is proved here.

Literature connection: recent all-shift/logarithmic Chowla work may provide a
single sparse exceptional set across many shifts. Such cardinality or density
information is classified as insufficient until the Gram-weighted exceptional
mass is bounded.

WeightedExceptionalShiftBridge records the exact missing source obligations:
level-set control, preservation of Gram weights, rough masks, frozen endpoints,
complete cofactor/complement allocation, p=q correction, and an actual weighted
bad-mass estimate.

## Connection B: pretentiousness stability under deleted prime coordinates

Deleting primes that divide a growing shift changes a prime-sum distance by a
reciprocal-prime loss. PretentiousDeletionBridge records the required inequality

  deletedDistance >= originalDistance - reciprocalLoss.

No theorem in this module proves that the pickup source satisfies a particular
pretentious-distance hypothesis, nor that an Elliott/Chowla theorem consumes
the resulting growing family uniformly.

The connection is useful because it can replace the stronger requirement that
EVERY centered prime supply survive. A successful route must prove enough
distance remains after all growing shift/modulus deletions and then preserve
the original Gram/mask/endpoints in the correlation consumer.

## Connection C: complete trace / spectral alternative

CompleteTraceShiftBridge records an alternative that avoids good/bad splitting:
construct one trace or spectral object containing every shift and recover the
signed Gram observation exactly. The required bridge includes integer-source
preservation, every shift, masks/endpoints, growing complexity, exceptional
fibers, and a quantitative trace bound.

Finite-field Mobius correlation and cohomological trace results are analogies
until these fields are discharged. No geometric theorem is imported here.

## Quantifier boundary

The relevant logical distinctions are:

  sparse Bad  does not imply  small sum_(r in Bad)|C(r)|;

  fixed-form cancellation  does not imply  one constant for a growing family;

  deleted reciprocal mass small on average  does not imply  every shift is good;

  trace injectivity  does not imply  a quantitative archimedean bound.

These boundaries are deliberate formal objects, not missing implementation
details.

## Evidence classification

Local theorem candidates: exceptionalMass_le_card_mul_sup,
finite_layer_cake_nat.
Imported mathematics in Lean: none beyond Mathlib.
Guth--Maynard: literature connection only.
All-shift Chowla exceptional-set results: literature connection only.
Pretentious correlation theory: structural connection only.
Finite-field/geometric trace methods: analogy only.
New pickup cancellation estimate: none.
Compilation: NOT_RUN.
Fresh kernel replay: NOT_RUN.
Transitive axiom audit: NOT_RUN.
RH claim: none.
