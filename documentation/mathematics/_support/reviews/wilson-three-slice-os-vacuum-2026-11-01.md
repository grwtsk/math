# Actual Wilson OS vacuum and sharp period-six supported translation

Local mathematical attribution: grwtsk contributors. 2026-11-01.

## Research target and existing source state

The next nonredundant requirement after constructing the genuine
finite-period reflection-positive Wilson Hilbert completion is to
identify its ACTUAL vacuum and test the already-defined, supported
time-translation operator against that vacuum. A Hilbert completion
alone does not identify a physical ground state; a contractive
operator alone does not imply that it fixes a unit vector or
preserves vacuum-orthogonal observables.

Observed grwtsk/math/main source commit:
  46c4741999934e5ca96a0af8b3f37d68a28987e6.

Relevant actual source identities:
- WilsonReflectionForm.lean, blob
  3bf9338b970b41cfc3a7ab5945495bfad2c5786f:
  positiveReflectionForm integrates the ACTUAL reflected
  positive-time observable product under positiveWilsonMeasure.
- FiniteSU2Wilson.lean, blob
  4d67894f4300159d09138338ac7543d6cd7b4dcd:
  the ACTUAL normalized four-dimensional SU(2) Wilson
  measure satisfies IsProbabilityMeasure for beta>=0.
- PositiveTimeObservables.lean, blob
  a2f245ebcd20ea0b89db60b444c084b226b8c9f1:
  positiveTimeAlgebra includes the constant 1 with
  literal gauge invariance and full-link dependence law.
- TwoStepPositiveTranslation.lean, blob
  b96c7b617eca6095e7c7eb89f2e37c5620e8c538:
  twoStepDomain support room and literal translatePositive.
- WilsonReflectionQuotient.lean, blob
  d802e0223bfb7339305d9377e55124fcad09026f:
  the EXACT positive-definite quotient form over the
  real normalized Wilson reflection integral.
- WilsonRestrictedTranslation.lean, blob
  4fa2171a3c310affd1d34547a1d92a5141d20e33:
  restrictedClasses, restrictedTranslation,
  restrictedTranslation_class and restrictedTranslation_symmetric.
- WilsonThreeSliceTranslation.lean, blob
  06c5cc717e416799c264e2d3e1a2b8bc6d7b1200:
  actual T=3 (period six) form contraction.
- WilsonReflectionHilbertCompletion.lean, blob
  3ff069823e00810afc73d784258f561e8e178af0:
  norm, true complex quotient Hilbert completion, source
  two-slot pairing preservation, null annihilation.
- WilsonThreeSliceOSBoundedTranslation.lean, blob
  00c7493d44f09fc226978de144481efc0c94583b:
  bounded supported quotient translation with norm at
  most 1 and canonical completion extension.

All relevant Lean sources are proof candidates pending
fresh elaboration, build, kernel and axiom evidence.
The present text does not upgrade their status.

## Actual nonzero unit vacuum from probability

At T=3 and beta>=0, the original full six-layer
four-dimensional Wilson probability is

  mu_6,beta(dU) = Z^-1 exp(-beta S_6(U)) Haar(dU).

Its complete original positive-link inventory, both
crossing temporal layers, full gauge symmetry, and
normalizer remain present in the normalized measure.
The actual positive-time algebra contains the unit
complex observable 1. The source definition of the
reflection form gives

  B_beta(1,1)
    = int conj(1(reflection U)) * 1(U) dmu_6,beta(U)
    = int 1 dmu_6,beta(U)
    = 1.                                                   (1)

This is not an independent inserted vacuum normalization.
The exact quotient and completion produce

  Omega_OS := j([1]),
  ||Omega_OS||^2 = Re B_beta(1,1) = 1.                 (2)

Therefore Omega_OS is a nonzero unit vector in the ACTUAL
complex reflection-positive Wilson Hilbert completion.
The entire original normalized Wilson measure is used.

The unit observable satisfies the literal two-step
support condition since changing ANY link leaves it
constant. Thus its class [1] belongs to D_3, the exact
existing two-step-supported quotient subspace.

## Time translation fixes that actual source class

The true translated observable is the composition
  translatePositive(F)(U)=F(timeTranslation U).

For F=1, this is the SAME original unit observable,
pointwise for every full Wilson configuration U:

  translatePositive(1)=1.                            (3)

Using the source's already-proved quotient descent,
  tau_3([1])=[translatePositive(1)]=[1].             (4)

The exact complex-linear C=1 supported translation thus
fixes a nonzero unit vector. In particular its operator
norm is exactly one:

  ||tau_3||=1.                                      (5)

The upper bound <=1 is the older source theorem.
The lower bound follows by evaluating on [1], whose
norm is 1 and whose image is [1]. This is stronger
than merely saying the supported translation is bounded.

The canonical completion extension agrees on all
original supported classes, so in particular

  tauhat_3(j_D [1]) = Omega_OS.                      (6)

Here tauhat_3 maps Completion(D_3) TO the entire
completed H_OS; its domain is NOT identified with H_OS.

## True vacuum pairing and excitation-sector invariance

The source-proved Hermitian translation identity
on the exact common two-step quotient domain says

  B_beta(tau_3 q,r)=B_beta(q,tau_3 r)
  for all q,r in D_3.                              (7)

Set q=[1]. Using tau_3([1])=[1], obtain for
EVERY supported class v∈D_3:

  <Omega_OS,tau_3(v)> = <Omega_OS,v>.               (8)

Thus, if v is orthogonal to the ACTUAL vacuum, then
tau_3(v) remains orthogonal to it. This retains the
complete physical source-supported excitation space,
not merely a finite residue Gram.

However, tau_3(v) may lie outside D_3. Equation (8)
is a single-step source theorem, not permission to
iterate tau_3 arbitrarily, and no full completed
OS Hamiltonian exists just from (4)-(8).

## Hostile comparison and exact nonpromotion boundaries

- A contractive linear operator need not have a fixed
  nonzero vector. The new source 1 witness pays this
  missing assertion with the actual Wilson probability.
- Positivity of the OS quotient form alone does not
  normalize its constant state. Source measure
  normalization is essential to the strict norm-one
  claim.
- At fixed finite period six, the actual two-step
  subspace may be proper. The vacuum lies in it, but
  that does NOT prove it is dense in the complete OS
  Hilbert or that the translation maps the entire
  supported subspace back into itself.
- A symmetric contraction on a proper domain is not
  automatically a self-adjoint global Hamiltonian.
  The existing quotient symmetry is an exact
  source-domain statement, not a global graph theorem.
- The actual complex OS Hilbert is different from
  the separately constructed real spatial-slice
  invariant L2; a complex-linear unitary identification
  is still absent. The prime-window graded direct sum
  and the Wilson plaquette residue cover do not fill
  that map.
- The T=4 source obstruction demonstrates that the
  particular T=3 geometry/return identity fails at
  T=4, NOT that all possible corrected global
  translation schemes are impossible.
- Nothing in (1)-(8) establishes continuum field
  equations, a regulator-uniform gap, or the
  four-dimensional physical Yang--Mills Hamiltonian.

## Intended Lean declarations and verification

New file:
  GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
  QuantumFieldTheoryOnLattices/WilsonThreeSliceOSVacuum.lean

New definitions/theorems:
  unitTwoStep; translate_unitTwoStep; reflection_one_one;
  vacuumSupported; vacuumSupported_coe;
  vacuumSupported_norm; vacuumOS; vacuumOS_unit;
  vacuumOS_ne_zero; restrictedTranslation_vacuum;
  completedRestrictedTranslation_vacuum;
  restrictedTranslation_preserves_vacuum_pairing;
  restrictedTranslation_preserves_vacuum_orthogonality;
  restrictedTranslationCLM_norm_eq_one.

The complete analytical argument is given above.
The source proof candidate consumes true original
Wilson probability, full reflection quotient and
existing supported translation symmetry. It does
not add a freely chosen vacuum, a new measure,
or any extra research axioms.

At the eventual published immutable commit and root
Lean v4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612:

    git rev-parse HEAD
    lake env lean GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonThreeSliceOSVacuum.lean
    lake build GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceOSVacuum

Then check full source identity, expected types,
fresh kernel, transitive axioms, no sorryAx,
and the source predecessor's full positivity
and quotient completion imports. Actual native
receipts belong in grwtsk/noeaaeue, not math.

Status: primary analytic proof INSPECTABLE at finite T=3,
Lean source candidate, parsing/elaboration NOT_RUN,
Lake compilation NOT_RUN, fresh kernel NOT_RUN,
transitive axiom audit NOT_RUN, expected-type checks
NOT_RUN, native/remote execution NOT_DISPATCHED.

**Single next supplier:** prove that the physical
two-step-supported time-translation domain has the
required dense/invariant full-Hilbert range, or
construct a corrected translation on the ENTIRE
finite Wilson reflection quotient with explicit
boundary-sector terms and a full OS norm contraction.
Only then does a global semigroup/operator generator
comparison become justified.
