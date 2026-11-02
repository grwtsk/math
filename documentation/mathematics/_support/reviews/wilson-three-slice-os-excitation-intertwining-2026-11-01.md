# Exact Wilson OS vacuum projection intertwining and supported excitation return

Local mathematical attribution: grwtsk contributors. 2026-11-01.

## Research question, current source and main consumer

The previous Wilson OS programme already constructed the actual
four-dimensional finite Wilson reflection measure, positive-time
complex gauge-invariant algebra, its true null radical, the algebraic
reflection quotient and completed complex Hilbert. The T=3,
period-six Wilson translation is source-proved contractive only from
the completion of its actual two-step-supported classes K into the
full completed OS Hilbert H. It fixes the original normalized vacuum,
and its source defect D=I_K-A* A is positive semidefinite.

The next nonduplicative bridge is to prove the complete **vacuum
projection intertwining** for the actual source operator, rather than
merely recording zero vacuum quadratic expectation. Its consumer
is the first actual full, completed supported excitation-to-excitation
operator and a necessary/sufficient, source-specific criterion for
nonzero OS spectral separation.

Current inspected source pin:
  grwtsk/math/main
  b247673f9a513e9e5bce8863caa24b6b53e160b3.

Direct source identities and Git blobs, read at this pin:

- WilsonReflectionHilbertCompletion.lean
  blob 3ff069823e00810afc73d784258f561e8e178af0:
  the source Wilson normalized reflection pairing gives the exact
  algebraic quotient norm and both-slot-preserving full completion.
- WilsonThreeSliceOSBoundedTranslation.lean
  blob 00c7493d44f09fc226978de144481efc0c94583b:
  true T=3 completed supported contraction K→H;
  every source supported class has the old translation image.
- WilsonThreeSliceOSVacuum.lean
  blob 6a24a41bdd2dd502cce0e425739673a006a1855e:
  the original normalized constant observable 1 produces
  unit vacua omega in K and Omega in H; source
  restrictedTranslation_vacuum and
  restrictedTranslation_preserves_vacuum_pairing establish
  the exact **algebraic supported** fixed-vector and pairing.
- WilsonThreeSliceOSDefect.lean
  blob 8d8820bcfdadb2b442f109bfe7862d5e4ccfd56a:
  true bounded positive self-adjoint source one-step loss
  D=I-A* A, with exact quadratic
  Re<x,Dx>=||x||²-||Ax||² and vacuum zero quadratic.
- WilsonRestrictedTranslation.lean
  blob 4fa2171a3c310affd1d34547a1d92a5141d20e33:
  the literal source quotient translation and symmetric
  pairing on the exact common two-step-supported range.
- Mathlib at the root pinned dependency
  d13f23b723b8a846827a245b89c10fc7d3f11612:
  InnerProductSpace.Adjoint, InnerProductSpace.Basic,
  ContinuousLinearMap.Restrict, and
  InnerProductSpace.Projection.Submodule.
  Adjoint_inner_left/right, innerSL.ker,
  ContinuousLinearMap.restrict, complex
  inner_smul_left/right, and canonical Completion.induction_on
  are actually present in this pinned API.
- Root Lean toolchain v4.34.1. Do not change dependencies.

The source output is a new module:
GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
QuantumFieldTheoryOnLattices/WilsonThreeSliceOSExcitationIntertwining.lean

The new source is a proof candidate, not an inherited acceptance
certificate. Upstream imported declarations remain source candidates
unless separate exact-kernel evidence is available.

## Genuine source Hilberts and the exact vacuum transport

Let A be the already-constructed COMPLETED finite-period supported
Wilson transfer

  A : K → H,

where K is Completion(range(classMap 3 ...)) in the true
reflection-positive norm and H is Completion(Q_3), the whole
finite-period complex OS quotient. These are distinct Hilbert
spaces. A is contractive, not postulated globally on H.

The true source-normalized constant positive-time observable 1
constructs actual unit vectors

  omega∈K,   Omega∈H,
  ||omega||=||Omega||=1,
  A omega=Omega.                                      (1)

The inherited source translation identity proves for EVERY
genuine algebraic two-step-supported quotient class q:

  <Omega,A j_D(q)>_H = <omega,j_D(q)>_K.              (2)

This is the original complex normalized Wilson reflection
pairing, not a substituted Haar or stationary Markov measure.
The source classes are dense in THEIR OWN completion K.
Both sides of (2) are continuous complex-linear functionals
on K. Therefore the actual completion theorem extends the
identity to EVERY x∈K:

  <Omega,A x>_H = <omega,x>_K.                       (3)

The true bounded Hilbert adjoint is characterized by

  <A* Omega,x>_K = <Omega,A x>_H.

Combining with (3) and nondegeneracy of the genuine
completed complex Wilson inner product yields the new
OPERATOR-level conclusion:

  A* Omega = omega.                                  (4)

This is a real representation bridge paid by the original
Wilson source and its dense Hilbert completion, not a
hypothesis field declaring an intertwiner.

## The true defect now kills the vacuum as a vector

The previous positive bounded one-step operator was

  D = I_K - A* A.

By (1) and (4),

  D omega = omega - A* Omega = 0.                    (5)

This is strictly stronger than the earlier source statement
Re<omega,D omega>=0. It is valid as an EXACT operator
identity, not merely a zero expectation. In particular,
because D is self-adjoint,

  <omega,D x> = <D omega,x> = 0 for ALL x∈K.         (6)

Thus the entire source defect range lies in the actual
vacuum-orthogonal supported completion; no unmodeled
vacuum/excitation cross term survives in the one-step
norm-loss form.

## Genuine complete excitation spaces and their transfer

Define the actual complex orthogonal complements

  K_exc = ker(<omega,·> : K→ℂ),
  H_exc = ker(<Omega,·> : H→ℂ).

These are CLOSED linear subspaces, because the inner product
with a fixed unit vector is continuous. The new source
constructs both closed spaces and their inherited complete
complex Hilbert structures. They are NOT finite residue spans.

For EVERY x∈K_exc, (3) gives <Omega,A x>=0,
so A maps K_exc INTO H_exc, with no density or onto
assumption. The actual restricted continuous linear map

  A_exc : K_exc → H_exc                           (7)

has operator norm ≤1, by the inherited true OS norm
contraction. There may be target excitations in H_exc
not in its image; none are silently set to zero.

Equation (6) likewise restricts the genuine positive
defect to an actual bounded source excitation operator

  D_exc : K_exc → K_exc.                          (8)

Its exact physical one-step budget is

  Re<x,D_exc x> = ||x||² - ||A_exc x||²
  for every x∈K_exc.                               (9)

This preserves the source's original normalized complex
reflection pairing, including all actual time-crossing
contributions contained in the inherited Wilson measure.

## Exactly where a strict spectral gap would have to come from

For any real number δ (NO δ>0 is supplied), equation (9)
gives the logically complete equivalence

  [for every x∈K_exc, δ ||x||² ≤ Re<x,D_exc x>]

       iff

  [for every x∈K_exc,
       ||A_exc x||² ≤ (1-δ)||x||²].                 (10)

If a genuine source-dependent positive δ could be proved,
the right side would establish strict contraction on
the ENTIRE supported excitation completion (and δ≤1 for
nonzero K_exc). No such positive δ is proved by (1)-(9).
The old source bound only gives δ=0. The operator D_exc
is NOT automatically an OS Hamiltonian and could have
further nonvacuum isometric zero-defect states.

The implication (10) does not manufacture δ or silently
turn the criterion into an estimate. It is a precise
noncircular acceptance target for physical Wilson
source-specific analytic work.

## Exact vacuum subtraction and complete source return

For any x∈K and y∈H, define

  x_exc = x - <omega,x> omega,
  y_exc = y - <Omega,y> Omega.                      (11)

Both are orthogonal to their respective source-normalized
vacua by the norm-one facts. Equations (1) and (3)
prove the exact intertwinement

  A(x_exc) = (A x)_exc.                            (12)

No extra projection map or assumed sector splitting
is introduced. Since D omega=0,

  D(x_exc) = D x.                                  (13)

Self-adjointness (6) and (13) give

  Re<x,Dx> = Re<x_exc,D x_exc>.                     (14)

Using the actual source quadratic identity on both sides
then proves the complete physical norm-loss return:

  ||x||² - ||Ax||²
    = ||x_exc||² - ||A x_exc||².                   (15)

Equation (15) is valid for EVERY supported completion
state, not only individually chosen algebraic class
generators, and it accounts for all original mixed
terms BEFORE any norming. It does NOT establish any
strict positive lower bound on the right side.

## Independent checks and hostile source cases

1. **Nonunitary contraction with a unit vacuum.** On
   ℂ², choose A=diag(1,t) for 0≤t<1 with omega=e1.
   Then A*Omega=omega, D=diag(0,1-t²),
   all loss lies in the excited direction. This
   verifies the theorem mechanism but is only an
   illustrative finite test, not the original Wilson source.
2. **Isometric excited sector.** Take A=identity on
   ℂ². It obeys (1)-(9), yet D_exc=0. Thus the
   source theorem cannot logically imply a positive δ.
3. **Proper source support.** Take K=ℂ e1 in H=ℂ²,
   A inclusion. Equation (3) holds on all of K,
   but A has no action on the extra target e2.
   Hence neither (12) nor A_exc constructs a
   globally defined transfer H→H.
4. **Missing vacuum pairing would fail.** Merely
   having Aomega=Omega and ||A||≤1 is sufficient
   for adjoint vacuum preservation analytically,
   but the actual new proof uses the stronger
   **source-shown** reflection pairing and Hilbert
   density rather than importing a free abstract
   vac-bound. This tests source fidelity.
5. **Zero coupling and finite periods.** The T=3
   reflection form and source contraction hold
   for β≥0, but no global T>=4 contraction follows.
   In particular the T=4 geometric obstruction
   concerns one support-return proof, not a
   universal impossibility.
6. **Different Wilson Hilberts.** The K,H OS spaces
   are COMPLEX. The previous entire invariant
   spatial-slice normalized transfer Hilbert was
   REAL, and an actual physical complexification,
   all-sector isometry and semigroup intertwiner
   are still missing.
7. **No continuum return.** This is a finite
   six-layer source theorem. Neither β,L scaling,
   full gauge-invariant excitation-domain
   reconstruction, nor a uniform nonzero mass
   floor is concluded.

The primary proof is a density/adjunction argument
applied to the actual source. The finite hostile
examples test independence of the missing strict
constant and missing global-domain return. There
is no novelty or priority claim against existing
operator theory, no external paper theorem imported
in the new increment, and no pretended independent
Lean-kernel certificate.

## New declaration map and verification conditions

Namespace:
GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSExcitationIntertwining

New source declarations include:
- vacuumOS_eq_supported_completion,
  source_vacuum_pairing, completed_vacuum_pairing,
  transfer_adjoint_vacuum,
  transferDefect_vacuum_eq_zero,
  transferDefect_image_orthogonal.
- supportedExcitationSpace, fullOSExcitationSpace,
  supportedExcitationSpace_closed,
  fullOSExcitationSpace_closed,
  supportedExcitationComplete, fullOSExcitationComplete.
- transfer_mem_full_excitation, excitationTransfer,
  excitationTransfer_coe, excitationTransfer_norm_le,
  excitationTransfer_norm_le_one.
- transferDefect_mem_excitation, excitationDefect,
  excitationDefect_coe, excitationDefect_quadratic,
  excitationDefect_gap_iff_transfer_contraction.
- supportedExcitationPart, fullOSExcitationPart,
  supportedExcitationPart_orthogonal,
  fullOSExcitationPart_orthogonal,
  transfer_excitationPart,
  transferDefect_excitationPart,
  vacuum_pairing_defect_zero,
  transferDefect_quadratic_centered,
  original_norm_loss_eq_excitation_loss.

No original Wilson, OS quotient, transfer, or prior
affine/prime-window Hamiltonian sources are edited.

As of proposal, new Lean elaboration NOT_RUN,
Lake compilation NOT_RUN, expected types NOT_RUN,
fresh kernel replay NOT_RUN, transitive axiom
audit NOT_RUN, native/remote execution NOT_DISPATCHED.
These remain independent of Git publication and
analytical proof review.

At the immutable published source commit, with
Lean v4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612
unless the published source environment differs,
check:

  lake env lean GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonThreeSliceOSExcitationIntertwining.lean
  lake build GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceOSExcitationIntertwining

Then verify all expected theorem types, the exact
complete import closure, every transitive axiom
(no sorryAx, no hidden unreviewed assumptions),
and fresh kernel checking with real logged exit codes.
Execution receipts belong in grwtsk/noeaaeue.

**Next exact mathematical supplier:** compute a
source-derived nonzero bound δ>0 on the ENTIRE
actual K_exc (including all supported modes),
or prove the necessary corrected global
finite-period Wilson OS translation, handling
all positive-time boundary sectors and thereby
constructing a complete physical semigroup.
Neither may be inferred from a finite color
grading or by treating K_exc as the whole H_exc.
