# Exact Wilson residue Gram: full signed cross-sector accounting

Local mathematical attribution: grwtsk contributors. 2026-11-01.

## Question and genuine physical source

The preceding all-residue covering identifies the actual finite four-dimensional
SU(2) Wilson action with the sum of its actual plaquette-class energies. It
does NOT say that these class energies are independent or orthogonal as random
observables, nor does it provide a positive excitation Hamiltonian gap.

The next nonredundant analytical step is to construct the complete quadratic
form induced by the **existing normalized Wilson probability measure**, using
the literal bounded gauge-invariant block observables, and retain every cross
pair. This is more than an abstract sector model and less than a physical
continuum mass-gap theorem.

Pre-publication source pin: grwtsk/math/main
e077d7e5114cfb2694b1adacb7236ebc2273f9fa.

Source modules actually inspected:

- GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
  QuantumFieldTheoryOnLattices/FiniteSU2Wilson.lean
  (blob 4d67894f4300159d09138338ac7543d6cd7b4dcd):
  actual normalized wilsonMeasure, actual plaquette action and actual
  gauge invariance.
- .../WilsonBlockArithmeticCovariance.lean
  (blob b1c27750d61252e857bc23a9a898304a6410b7c2):
  plaquetteEnergy, gauge-invariant blockEnergy, blockEnergy_memLp,
  blockCovariance_eq_pairs.
- .../WilsonBlockCovarianceBudget.lean
  (blob 522124341e2bd50232384aeb64a001bd817c3729):
  plaquette covariance absolute bound 1, without assuming decay.
- .../WilsonGodelResidueCover.lean
  (blob 4f395ec97b5b6b7b91abc6610efefa349e4ae2b6):
  actual gradedWilsonFiber and gradedWilsonEnergy with a source-exact cover.
- Mathlib Probability/Moments/Covariance.lean and Variance.lean pinned
  to Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612:
  covariance_fun_sum_fun_sum', covariance_const_mul_left/right,
  covariance_self and variance_nonneg.

## Exact finite quadratic, with NO discarded interference

For fixed regulator L≥1, beta≥0, arbitrary finite residue label set R,
and an actual plaquette map rho:P_L→R, write

  E_r(U) = sum_{p:rho(p)=r} e_p(U),
  e_p(U)=1-(1/2) Re Tr(Hol_p(U)).

Let mu_{L,beta} be the actual Wilson probability measure and a:R→Real
be any finite signed real coefficient family. The *source observable* is

  X_a(U) = sum_{r∈R} a_r E_r(U).

Each E_r is continuous, gauge invariant and bounded on the actual compact
full-configuration space. Thus X_a belongs to its real L2 probability space;
the source's existing continuous compact-support MemLp supplier is used,
rather than a newly assumed finite-energy certificate.

Set

  C_rs = Cov_{mu_{L,beta}}(E_r,E_s).

The complete real Gram quadratic is

  Q(a) = sum_{r,s∈R} a_r a_s C_rs.

Actual covariance bilinearity, exact finite sum interchange and existing
L2 membership prove

  Q(a) = Cov(X_a,X_a) = Var(X_a) ≥ 0.                (1)

This is an *actual* positive-semidefinite quadratic on finite coefficient
vectors, with a concrete probabilistic realization. It is not the
Yang–Mills Hamiltonian, does not require inventing an operator domain,
and has not been identified with the different spatial-slice
gaugeInvariantSpace in WilsonSliceGaugeHilbert. Positive semidefinite
does not mean strictly positive definite.

The source already supplies a second exact identification:

  C_rs = sum_{p:rho(p)=r} sum_{q:rho(q)=s}
            Cov(e_p,e_q).                            (2)

It counts every ordered plaquette pair, including p=q and both orientations
when p≠q. The exact Wilson signed cross and diagonal are

  D(a) = sum_r a_r² C_rr,
  X(a) = sum_{r≠s} a_r a_s C_rs,
  Q(a) = D(a) + X(a).                               (3)

Define the *actual* off-diagonal absolute budget

  B_cross(a) = sum_{r≠s} |a_r a_s C_rs|.

Then pure triangle inequality, with NO presumed cancellation, proves

  |X(a)| ≤ B_cross(a),
  D(a)-B_cross(a) ≤ Q(a).                            (4)

This is the exact source-preserving lower comparison requested by the
prior research step. It is unconditional for the finite Wilson regulator
and useful as a tested interface for any genuine future decay estimate.

## Concrete bound already available from actual Wilson physics

SU(2) unitarity bounds each plaquette penalty between 0 and 2; the existing
WilsonBlockCovarianceBudget proof concludes

  |Cov(e_p,e_q)| ≤ 1

at every regulator, coupling beta≥0 and plaquette pair (p,q), without
distance or mixing hypotheses. Applying this to (2) yields

  |C_rs| ≤ |P_r| |P_s|.                              (5)

Consequently a fully explicit physical, but volume-dependent, allowance is

  B_cross(a) ≤ sum_{r≠s}
                   |a_r a_s| |P_r| |P_s|.           (6)

This is a genuine estimate extracted from the actual Wilson source, not
a free redefinition of the unknown signed residual. It does NOT tend to
zero with separation or provide regulator-uniform boundedness. For a
four-dimensional L-periodic lattice, the plaquette inventory grows
with L, so (6) generally becomes weaker as the regulator grows.

## Precise conditional coercivity consumer

For a chosen real coefficient vector a and constants delta, epsilon,
suppose both of the following have independently been established:

  D(a) ≥ delta * sum_r a_r²,                         (7)
  B_cross(a) ≤ epsilon * sum_r a_r².                 (8)

The exact identity (3) and (4) then yield

  Q(a) ≥ (delta-epsilon) * sum_r a_r².               (9)

A positive coefficient-space gap requires delta>epsilon *and* (7)–(8)
uniformly over every required coefficient vector. For continuum physics,
even that finite coefficient-space bound does not identify Q with the
genuine gauge-invariant excitation Hamiltonian or transport a normalized
gap through the cutoff and continuum limits.

The new Lean declaration gram_coercive_of_diagonal_and_cross is a correct
logical implication with its honest, fully visible unproved estimates.
No fabricated numerical delta or epsilon is introduced. The *unconditional*
new output is (1)–(6), not (9).

## Source-specific counterexamples and objections

1. An arbitrary residue map need not be onto. If grade r is empty,
   E_r(U)=0 at every physical Wilson configuration. Its covariance row
   and the coefficient e_r are invisible to Q. Consequently no strictly
   positive lower bound Q(a)≥c||a||² can be proved for every grading and
   every coefficient vector at any c>0.
2. Even nonempty classes do not ensure a nondegenerate Gram:
   two distinct nonzero random variables X and Y can be perfectly
   correlated or anticorrelated, making a covariance Gram singular.
   This elementary two-variable example is an obstruction to a purely
   counting-based argument, NOT evidence that the actual Wilson classes
   have the same degeneracy.
3. A pair of separated Wilson blocks need not be probabilistically
   independent under the coupled Wilson law. Existing link-support
   separation alone gives no decay. All cross covariances are retained.
4. A flat Wilson link configuration has every plaquette penalty zero;
   this pointwise zero is not proof that the full covariance is zero
   under the physical Wilson measure. The two observations must not
   be confused.
5. The Gödel observer's positive spatial-energy weighting can be
   applied to coefficient vectors or class observables, but it gives
   no guaranteed lower variance or cross-covariance cancellation.
   The true vorticity tensor is not the SU(2) curvature tensor.
6. Q(a) is an actual covariance on the FULL finite Wilson configuration
   probability space. It is not automatically the source's distinct
   spatial-slice transfer quadratic or a self-adjoint physical
   excitation Hamiltonian. That separate domain/form comparison is
   the next missing mathematical source map.

## Proved-vs-pending qualification

Mathematical primary argument: explicit finite covariance bilinearity,
positive variance, actual pairwise Wilson expansion, and a triangle
estimate for the actual ordered off-diagonal source.
Independent check: empty-grade null vector, possible perfect
correlation, and volume growth demonstrate exact limits of a
counting-only gap argument. No claim of independent proof of continuum
Yang–Mills is made.

New intended Lean module:
GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
QuantumFieldTheoryOnLattices/WilsonGradedCovarianceGram.lean.

Principal intended declarations:

- gradeObservable, gradeCovariance, gramQuadratic.
- gradeObservable_memLp, gramQuadratic_eq_covariance,
  gramQuadratic_nonneg, gradeCovariance_eq_plaquette_pairs.
- gradeCovariance_abs_le_card.
- diagonalQuadratic, offDiagonalQuadratic, offDiagonalBudget.
- gram_eq_diagonal_add_offDiagonal, offDiagonal_abs_le_budget,
  diagonal_sub_budget_le_gram.
- offDiagonalBudget_le_card_sum, empty_grade_observable_zero.
- gram_coercive_of_diagonal_and_cross (CONDITIONAL only).

No upstream research-paper theorem is imported in this increment;
the checked source is composed from previously recorded internal
Wilson/Mathlib inputs. The original Jaffe–Witten 4D Yang–Mills
problem and Gödel's metric remain referenced in their original
source files; neither is proved by this finite Gram.

**Evidence status:** mathematical finite derivation independently
inspectable; new Lean source candidate, compiler elaboration NOT_RUN;
Lake compilation NOT_RUN; fresh kernel checking NOT_RUN; expected
statement type checks NOT_RUN; transitive axiom audit NOT_RUN;
remote/native execution NOT_DISPATCHED; continuum estimate OPEN.

At a new exact published math commit, require a clean pinned build of
this module and its full imports under the actual root toolchain,
fresh kernel and transitive axiom audit for every new declaration,
expected-interface inspection, absence of sorryAx and unauthorized
research axioms, and matching operational receipts in grwtsk/noeaaeue.
Do not transfer another revision's acceptance.

**Next one mathematical supplier:** prove a genuine separation-sensitive
Wilson covariance bound or a lower covariance diagonal floor, with
constants whose regulator dependence is explicit, then establish a
source-bound map of this finite covariance Gram to the actual
gauge-invariant transfer/Hamiltonian excitation quadratic, including
all non-Galerkin complement sectors. Do not treat a new partition,
an assumed positivity witness or a favorable finite trial as that map.
