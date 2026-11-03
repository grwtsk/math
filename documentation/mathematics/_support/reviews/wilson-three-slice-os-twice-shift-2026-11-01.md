# Six-slice Wilson OS second-shift isometry and exact contraction defect

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-01.

## Physical question and source status

The user requests either (i) an unconditional strictly positive contraction
rate on the ENTIRE completed Wilson supported vacuum complement, or
(ii) a true, boundary-corrected, globally contractive positive-time
translation on the FULL reflection-positive Wilson Hilbert space.

Neither follows from the existing period-six partial contraction, vacuum
and positive one-step defect. The present source increment instead
constructs a new ORIGINAL WILSON second-shift isometry and uses it
to turn the complete one-step contraction defect into an exact
squared norm of ORIGINAL source observable classes. This is a
genuinely new, source-complete necessary-and-sufficient mathematical
target for the requested positive estimate, not a claim of its solution.

Observation source: grwtsk/math/main
8fc05445df78d75bb7c49106e34e95e6f97bbb60.
At publication refresh the complete main tree with its expected head
and reread all direct dependencies. This is a fixed observation pin,
not an assertion about the future.

### Direct source inputs

- WilsonReflectionQuotient.lean blob d802e0223bfb7339305d9377e55124fcad09026f:
  original normalized complex finite Wilson OS quotient pairing.
- TwoStepPositiveTranslation.lean blob b96c7b617eca6095e7c7eb89f2e37c5620e8c538:
  literal first and twice-translated positive-time source observations.
- WilsonRestrictedTranslation.lean blob 4fa2171a3c310affd1d34547a1d92a5141d20e33:
  original quotient classMap, restrictedClasses and actual first shift.
- WilsonThreeSliceTranslation.lean blob 06c5cc717e416799c264e2d3e1a2b8bc6d7b1200:
  exact source period-six identity
  B(tau² F,tau² F)=conjugate B(F,F)
  and source C=1 first-time contraction.
- WilsonTimeTranslation.lean:
  the original full Wilson measure-preserving translation and complex
  reflectionForm_translate_left, which moves the SAME time shift
  from first to second argument of the ORIGINAL normalized pairing.
- WilsonReflectionHilbertCompletion.lean blob
  3ff069823e00810afc73d784258f561e8e178af0:
  genuine complex Hilbert norm, both-slot original pairing and completion.
- WilsonThreeSliceOSBoundedTranslation.lean blob
  00c7493d44f09fc226978de144481efc0c94583b:
  the actual norm-contracting first time shift A:K→H.
- WilsonThreeSliceOSExcitationIntertwining.lean blob
  b7bd185e4754f1c7b04cd0b8c90ae5d18d6ad601:
  original vacuum projection, full supported complete excitation Hilbert,
  correct source/target excitation map.
- WilsonThreeSliceOSDefect.lean blob
  8d8820bcfdadb2b442f109bfe7862d5e4ccfd56a:
  true source loss D=I-A-adjoint A.
- Pinned Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612:
  norm_sub_sq, Completion.induction_on₂ and
  ContinuousLinearMap.completion; Lean toolchain v4.34.1.

All imported source claims retain their OWN source-proof-candidate
and NOT_RUN kernel/axiom evidence. This increment transfers no acceptance.

## Actual finite-period Wilson Hilbert geometry

T=3 fixes original four-dimensional periodic Wilson time period 6.
Let Aplus be the ORIGINAL complex gauge-invariant positive-time
observable algebra and N its actual normalized reflection radical.
The algebraic quotient Q=Aplus/N has the true source inner product
B. Its complex Hilbert completion is H.

Let V be the original twoStepDomain 3, with only the genuinely
supported spatial links at time representative1. Its quotient
image D3=range(classMap:V→Q) has completion K.
K need not be all of H.

The old actual source first shift A:K→H is a genuine C=1 contraction.
Its source unit vacuum omega∈K maps to Omega∈H.

The original literal first and SECOND positive-time pullbacks
are defined for every F∈V, and the period-six source proves

    q(tau² F)=q(F),                                      (1)

where q(F)=Re B(F,F). No extra free probability or
zero-crossing-boundary term has been assumed.
This equality makes the second shift NULL-PRESERVING:
if F belongs to the original N, then tau²F belongs to N.

By EXACTLY the existing quotient by N, the literal second
shift descends to the original D3:

    J2([F]) := [tau² F],   J2:D3→Q.                    (2)

Every original supported class satisfies

    ||J2([F])||_Q=||[F]||_Q.                            (3)

The true Hilbert-space completion extends (2) to the
ACTUAL source-defined linear isometry

    J2:K→H,   ||J2 x||=||x|| for EVERY x∈K.             (4)

The original supported inclusion also extends by
canonical completion to the genuine isometry

    J:K→H,    ||J x||=||x||.                            (5)

These maps are not invented Hilbert proxies, and neither
is a GLOBAL first time translation on all H.

## The full complex source pairing survives intact

The maintained WilsonTimeTranslation reflection theorem states

    B(tau F,G)=B(F,tau G).

Apply this theorem with G replaced by tau G.
The true source support proves all relevant
translated observables belong to Aplus. Thus

    B(tau F,tau G)=B(F,tau² G).                       (6)

This is a COMPLEX equality, including signed cross
terms and conjugation, before taking real parts.

The new Lean source translates (6) to every original
supported pair [F],[G] using the exact existing radical
quotient and its two separate completed embeddings.
Density of original supported classes in K and continuity
in both complex Hilbert variables prove for ALL x,y∈K:

    <J x,J2 y>_H = <A x,A y>_H.                       (7)

This supplies the full two-slot operator comparison.
It is NOT a hypothetical isometric intertwining of
the *whole physical* OS Hilbert with the separate
spatial-slice real Hilbert.

## An unconditional exact one-step defect SQUARE

From (4), (5), (7) and genuine complex Hilbert polarization,

  ||Jx-J2x||²
     =||Jx||²+||J2x||²-2 Re<Jx,J2x>
     =2||x||²-2||Ax||².

Therefore every COMPLETE supported Wilson OS state satisfies

    ||x||²-||Ax||² = (1/2)||Jx-J2x||².               (8)

The original previously constructed positive bounded defect
D=I-A-adjoint A consequently obeys

    Re<x,Dx> = (1/2)||Jx-J2x||².                     (9)

The right side is an exact squared distance of
TWO SOURCE-DEFINED isometries on the SAME actual
supported state. No boundary, tensor, sign,
interference term or physical sector has been
silently declared negligible.

For any x∈K:

    ||Ax|| < ||x||  iff  Jx ≠ J2x.                  (10)

For nonzero x satisfying the distinctness condition,
the source-derived *state-dependent* positive deficit is

    delta(x) = ||Jx-J2x||²/(2||x||²)>0,
    ||Ax||²=(1-delta(x))||x||².                    (11)

This is a true strictly positive bound for THAT state.
It is NOT a constant valid for all possible x in K_exc.
No actual source-specific nonconstant test class is
proved distinct here; existence of such a class
requires a separate positivity/non-null supplier.

The source-derived complete uniform criterion on the
ACTUAL vacuum-orthogonal supported Hilbert K_exc is

 [for every x∈K_exc,
     ||Ax||² ≤ (1-delta)||x||²]
    iff
 [for every x∈K_exc,
     2 delta ||x||² ≤ ||Jx-J2x||²].                (12)

No delta>0 satisfying (12) is asserted or manufactured.
This remains the exact outstanding uniform-coercivity
requirement.

## Why this is not a globally boundary-corrected Hamiltonian

J2 is a genuine isometric **second** shift from K into H.
It does not claim A(K)⊂K. The first shift A may have
image outside the supported source domain, so A² is
not an endomorphism of K. An unsupported zero extension
on H\K would fabricate dynamics, not reconstruct
the original Wilson field theory.

The source T=4 support-return obstruction explicitly
blocks extending the same T=3 pointwise identity
to every period. The separate grwtsk/math issue #1449
contains an analytical, NOT Lean-accepted, T>=4
two-slice counterexample to raw uniform translation.
Neither issue is repaired by pretending J2 is a
physical global shift.

A physical full four-dimensional Yang--Mills Hamiltonian
still requires an exact globally contractive OS
semigroup on the entire complex physical Hilbert,
all boundary/crossing sectors, an actual map to
the regulated real slice transfer representation,
and regulator-uniform vacuum-compatible
continuum construction and positive excitation gap.

## Hostile checks

1. An arbitrary pair of isometries J,J2 does not
   guarantee that (7) can hold for a genuine A:
   their mixed pairing must be the specific positive
   operator A* A. The original Wilson translation
   theorem proves this additional physical condition.
2. If J=J2 on a nonvacuum subspace, (8) gives
   zero contraction defect there. Thus positivity
   of D does NOT imply strict excitation positivity.
3. If a sequence of unit vectors in the true K_exc
   has ||Jx_n-J2x_n||→0, no uniform positive delta
   can satisfy (12), even if every individual
   difference is nonzero.
4. At beta=0 the Wilson reflection quotient may have
   only the constant direction. Any empty-excitation
   positive bound is vacuous for a mass-gap claim.
5. A source map K→H cannot be identified with an
   endomorphism H→H by merely completing K or
   knowing the actual unit Wilson vacuum.
6. Prime-window additive Hamiltonian offsets and
   arithmetic signed RH Gram terms remain different
   mathematical objects; sharing residue notation
   does not identify them with J,J2,A.

## New source and exact validation

New file:
GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
QuantumFieldTheoryOnLattices/WilsonThreeSliceOSTwiceShift.lean.

Intended declarations:
twice_diagonal_eq, twice_null, twiceClass,
ker_classMap_le_ker_twiceClass, twiceLift,
twiceTransport, twiceTransport_class,
twiceTransport_norm, twiceTransportCLM,
twiceTransportComplete,
twiceTransportComplete_class,
twiceTransportComplete_norm,
originalEmbedding, originalEmbedding_class,
originalEmbedding_norm, original_mixed_shift,
original_mixed_class_pair, completed_mixed_pair,
exact_loss_as_twice_shift_distance,
strict_contraction_iff_twice_shift_distinct,
uniform_contraction_iff_twice_shift_separation.

Mathematical proof (1)-(12) is inspectable, with
every original source, support and quantifier stated.
No independent earlier novelty or kernel acceptance
is claimed. The actual full-positive-time
complex OS pairing remains authoritative.

At the immutable published source and pinned
Lean v4.34.1/Mathlib snapshot:

  lake env lean GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonThreeSliceOSTwiceShift.lean
  lake build GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceOSTwiceShift

Check exact expected types, full imported dependency
closure and fresh kernel/transitive axiom audits for
the descent, completed isometries and original
mixed pairing, together with both exact-loss
and strict-iff results. Reject sorryAx and
unreviewed research axioms. Keep actual operational
receipts in grwtsk/noeaaeue.

Publication does NOT establish Lean elaboration,
compilation, fresh kernel replay, or transitive
axiom acceptance. For all new bytes, record
these as NOT_RUN until source-pinned receipts exist.
Native/remote proof checking was NOT_DISPATCHED.

Next noncircular supplier: obtain a genuinely
strict positive lower bound on ||Jx-J2x||²
for EVERY actual supported, completed,
vacuum-orthogonal Wilson state, or build
the fully boundary-corrected global OS
first-time contraction and prove its
operator-semigroup identification.
