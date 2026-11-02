# The genuine Wilson OS contraction-defect operator on the completed supported sector

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-01.

## Purpose and exact source boundary

This increment advances the source-exact Osterwalder--Schrader
reflection-positive Hamiltonian route. The current math source provides:

- the literal finite-period SU(2) Wilson measure and Hermitian
  reflection pairing on gauge-invariant complex positive-time observables;
- the source null radical and positive-definite algebraic quotient;
- a true complex Hilbert completion of that quotient;
- for T=3 (actual Wilson periodic time 6), a supported-subspace
  translation contraction and its completion from the
  **completed two-step-supported space** into the entire OS Hilbert;
- a true normalized unit Wilson vacuum represented by the original
  constant observable, fixed by the supported translation, with
  its one-step vacuum pairing preserved.

The next missing step is not another free Hamiltonian name or
finite residue algebra. The C=1 contraction itself determines a
nonnegative bounded **one-step defect operator**, complete on the
true supported Hilbert domain. Its kernel/energy gives an exact
source-target for physical excitation estimates, without asserting
that the partial translation is a full global semigroup.

At current source discovery: grwtsk/math main
ff22240fa280f508efa0d48c7ab9c8d43665f892.
Refresh and verify the actual complete tree and source identities
before publishing; this observation pin is not a future head.

Direct source read and unchanged source candidates:

- GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
  QuantumFieldTheoryOnLattices/WilsonThreeSliceOSBoundedTranslation.lean
  blob 00c7493d44f09fc226978de144481efc0c94583b:
  actual supported completed translation norm at most 1.
- .../WilsonThreeSliceOSVacuum.lean
  blob 6a24a41bdd2dd502cce0e425739673a006a1855e:
  actual vacuum in the supported subspace and full completed
  OS Hilbert, unit norm and true one-step fixed-vector law.
- .../WilsonReflectionHilbertCompletion.lean
  blob 3ff069823e00810afc73d784258f561e8e178af0:
  exact complex inner product on the original Wilson radical
  quotient, Hilbert completion, source-pair preservation.
- .../WilsonRestrictedTranslation.lean
  blob 4fa2171a3c310affd1d34547a1d92a5141d20e33:
  genuine period-six two-step-supported class source and shift.
- .../WilsonThreeSliceTranslation.lean
  blob 06c5cc717e416799c264e2d3e1a2b8bc6d7b1200:
  the true T=3 form contraction derived from original
  reflection integral and exact periodic support.
- Mathlib at the exact root manifest pin
  d13f23b723b8a846827a245b89c10fc7d3f11612,
  Analysis/InnerProductSpace/Adjoint.lean:
  continuous linear map adjoint and the exact inner-pairing
  characterization; Analysis/InnerProductSpace/Positive.lean:
  positive bounded endomorphism as symmetry plus
  nonnegative quadratic.

No historical acceptance is inferred from source existence.
All new Lean declarations are proof candidates until executed.

## New object: the actual one-step OS defect

Let
  Q_3 = (actual positive-time complex Wilson algebra) /
        (its exact reflection-form radical),

  H = Completion(Q_3),
  D_3 = range(actual twoStepDomain 3 classMap) <= Q_3,
  K = Completion(D_3).

The source-built, norm-contracting supported translation is the
ACTUAL completed complex-linear operator

  A : K -> H,
  A = completedRestrictedTranslation(beta,hbeta).

Importantly K is not asserted equal to H, and A does not map
K to itself. Thus A cannot legitimately be iterated without
a new source theorem, and no physical Hamiltonian is
constructed by setting unsupported sectors to zero.

Nevertheless K and H are genuine complete complex Hilbert
spaces. The true Hilbert adjoint A†:H -> K is therefore
defined without any invented complement or representation.

Define the canonical bounded source operator

  D = I_K - A† A : K -> K.                          (1)

For every x,y in K, by the definition of Hilbert adjoint,

  <x,Dy> = <x,y>_K - <Ax,Ay>_H.                    (2)

This exact **two-slot** identity retains the original
complex reflection pairing and all of its cross terms,
rather than constructing an unrelated positive scalar.

In particular the actual real quadratic is

  Re<x,Dx> = ||x||_K² - ||Ax||_H².                 (3)

The existing Wilson source contraction ||Ax||_H<=||x||_K
implies

  0 <= Re<x,Dx> <= ||x||_K².                      (4)

The operator is bounded by construction and self-adjoint:
the difference of the identity and A†A is symmetric under
the **actual** Hilbert inner products, so in the complete
space it is self-adjoint. It is positive in the strict
operator-theoretic sense of a positive semidefinite
bounded complex-linear map, not an unreviewed positivity
certificate field.

The exact zero-energy condition is

  Re<x,Dx> = 0  iff  ||Ax||_H = ||x||_K.           (5)

Thus the full null quadratic of the true one-step defect
is the isometric sector of the source translation.
The source does NOT yet prove that the isometric sector
equals the one-dimensional vacuum span: a unitary
translation can have many zero-defect excitations.

## Back to the original Wilson reflection integral

For an original source class q in the genuine two-step
supported quotient D_3, let j_D q be its canonical
embedding in K and let tau_3 q be the source-defined
translated class in Q_3.

The exact completion embeddings and actual quotient
inner products identify (3) with the original normalized
Wilson reflection integrals:

  Re<j_D q, D (j_D q)>
   = Re B_3(q,q) - Re B_3(tau_3 q,tau_3 q).       (6)

Here the reflection pairing is precisely the source
integral against the normalized full six-period SU(2)
Wilson measure; every original link, temporal crossing
layer and conjugation is integrated in the inherited form.
No normalization by an unrelated gauge model is inserted,
and no signed covariance is replaced by an absolute square
before the source formula.

This is a genuine new physical-source-comparison equality,
not just a positive-definite abstract Hilbert gadget.

## Actual original unit vacuum

The source vacuum is the canonical normalized class
of the literal constant positive-time observable 1:

  omega = j_D[1] in K,
  Omega = j[1] in H,
  ||omega||_K = ||Omega||_H = 1,
  A omega = Omega.

Thus from the exact difference of squared norms,

  Re<omega,D omega> = 0.                           (7)

This is a concrete nonzero zero-energy source witness,
not a chosen basis vector. The current source also proves
the one-step vacuum pairing property and preservation
of its source-supported orthogonal excitations.

Equation (7) alone does not imply a strictly positive
spectrum above the vacuum. Deriving D omega=0 or a
strict lower bound on the entire source-supported vacuum
complement requires additional positivity/adjoint
arguments and, for strictness, a genuinely source-specific
non-isometry estimate. No such contraction factor below 1
on that complement is asserted here.

## Counterexamples, support mismatch and continuum caution

1. **Proper supported subspace:** if D_3 is proper in Q_3,
   K is NOT the full H. The operator D is defined on K,
   not on H. Zero-extending A on H\K would invent a
   transition law for unobserved positive-time boundary
   links and violate the scope of the original source.
2. **Isometric dynamics:** if a linear map A acts
   isometrically on some nonvacuum subspace, its defect
   vanishes there. Nonnegative (4) alone does not prove
   strict excitation positivity or a mass gap.
3. **Identity shift:** if A=I in a legitimate model,
   D=0 on every state. A norm-one preserved vacuum
   and semidefinite defect cannot exclude this.
4. **Wrong reflection norm:** comparing source sup
   norms or normalizing Haar without the original
   Wilson partition function changes (6). The
   actual quotient pairing and completed norm are used.
5. **T>=4:** the source T=3 bound cannot be applied
   unchanged to general periods. The existing
   four-slice geometry obstruction rules out only
   the same coordinate-return proof, not all
   possible full translation contractions.
6. **Cross-sector misidentification:** K is a
   complex OS supported Hilbert, whereas the
   independently constructed regulated slice
   transfer is a real invariant L2 Hilbert. Their
   operator spectra and vacuum sectors cannot be
   identified without an actual source-defined
   complexification and intertwiner.
7. **No continuum:** even a strict bound on the
   finite period-six defect would not yield
   regulator-uniform physical 4D continuum dynamics
   without a genuine multi-regulator scaling family.

## Declaration map, validation and next supplier

New source module:
  GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
  QuantumFieldTheoryOnLattices/WilsonThreeSliceOSDefect.lean.

Namespace:
  GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSDefect.

Names:
- SupportedHilbert, FullOSHilbert,
  actualSupportedTransfer, transferDefect.
- transferDefect_pairing, transferDefect_quadratic,
  transferDefect_nonnegative, transferDefect_le_norm_sq,
  transferDefect_symmetric, transferDefect_selfAdjoint,
  transferDefect_isPositive,
  transferDefect_zero_iff_isometric.
- supportedVacuum, supportedVacuum_unit,
  transferDefect_vacuum_zero_quadratic,
  transferDefect_original_source.

The mathematical argument is standard Hilbert adjunction
applied to the actual source-identified Wilson finite-period
OS contraction, with no claim of independent novelty against
operator-theory literature or peer review.

Lean parser/elaboration NOT_RUN; Lake compilation NOT_RUN;
fresh kernel replay NOT_RUN; expected types NOT_RUN;
transitive axiom audit NOT_RUN; native/remote proof checking
NOT_DISPATCHED. These are NOT postulates of the claim and
their status must not be inferred from Git publication.

At the final immutable published source, pin the full
tree, direct dependencies and exact root environment;
run in an authorized exact-source checkout:

  git rev-parse HEAD
  lake env lean GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonThreeSliceOSDefect.lean
  lake build GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceOSDefect

Fresh check every theorem's intended type and all
transitive axioms (no sorryAx or unapproved axioms).
Preserve actual operational receipts in grwtsk/noeaaeue,
not in the math repository.

**One next noncircular supplier:** derive a real
source-dependent strict norm estimate
  ||A x|| <= (1-delta)||x||
on the ENTIRE source-supported vacuum-orthogonal
completion with a verified delta>0, or construct
the missing full-domain positive-time translation
with exact boundary terms and then derive its
complete Hilbert-space semigroup. Only the latter
can support global physical Hamiltonian reconstruction.
