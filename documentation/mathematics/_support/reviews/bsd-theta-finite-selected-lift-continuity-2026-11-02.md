# Theta obstruction: finite selected-lift continuity and original Brauer H² return

**Date:** 2026-11-02 (America/Los_Angeles).
**Original upstream mathematical and Lean sources:** The Tau Ceti
contributors, `TauCetiProject/TauCeti` immutable commit
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
Apache-2.0, Lean v4.36.0-rc1.
**Maintained mathematical source:** grwtsk contributors (MIT).
**Independent grwtsk/math root:** Lean v4.34.1, unchanged.

**Mathematical disposition:** The PURE topological proposition
proves that actual scalar-factor continuity follows from continuity
of the finitely many selected theta-function Galois orbits. The
selected function orbits are classically continuous because their
elliptic rational functions involve finitely many separable-algebraic
coefficients. The pinned source gives the explicit finite-coefficient
representation needed to prove this in Lean, but the final source
elaboration for that last ingredient has NOT been run/completed.

**Formal acceptance:** SOURCE_PROOF_CANDIDATE.
LEAN_PARSING_NOT_RUN, COMPILATION_NOT_RUN,
COMPATIBLE_TAUCETI_IMPORT_NOT_RUN, FRESH_KERNEL_NOT_RUN,
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
No new `axiom`, `sorry`, `admit`, root imports, toolchain/
Mathlib pin migration, native Noe/CI job or automations.
A Git blob/readback is not a compiler or kernel receipt.

## 1. What was previously assumed, and what is now derived

In pinned grwtsk/math `TauCetiThetaBrauerH2Transport.lean`,
the actual geometric source `thetaObstructionScalar a σ τ`
lands in `(Fsep)ˣ` and satisfies a genuine multiplicative
2-cocycle identity by the newer original Galois-theta group
source `TauCetiThetaGaloisScalarFactor.lean`.
However `ThetaScalarContinuous W n a`, continuity of

  `(σ,τ) ↦ Additive.ofMul (thetaObstructionScalar a σ τ)`

into the genuine discrete `UnitsCoeff F`, was still an
independently required arithmetic hypothesis. Continuity
of the `UnitsCoeff F` Galois ACTION alone does not prove
continuity of an arbitrarily assigned factor cochain.

The new bridge eliminates this as a *freestanding* hypothesis.
Let

  `G=Gal(Fsep/F)`,
  `A=W.TorsionCoeff n=E(Fsep)[n]`,
  `Theta=actual theta rational-function group`,
  `K=(Fsep)ˣ`,
  `s(t)=geometricLift W n t`.

The source genuine E[n] cocycle `a:G→A` is continuous,
and the genuine source identity is

  `scalarLift(c(σ,τ)) =
     s(a σ) * σ(s(a τ)) * s(a (στ))⁻¹`.

The new condition is ONLY

  `∀ t:E[n](Fsep), Continuous (σ ↦ σ s(t))`,

which is `SelectedThetaLiftOrbitsContinuous` in the
source. The original `A` is finite for `n≠0` by the
pinned source `finite_torsionCoeff`, and for n
invertible in F its cardinality is exactly n².

The pure topology theorem
`continuous_scalar_boundary_of_selected_orbits`
derives continuity of c. It does NOT assume a global
continuous `G` action on ALL infinite theta-group
elements, nor assume continuity of c or the
cocycle identity as fields of a fabricated object.

### Complete mathematical proof of the topological lemma

(1) Since A is discrete and a:G→A is continuous,
    s∘a:G→Theta is continuous for the DISCRETE
    theta-group topology.

(2) For each fixed t∈A, assume the orbit
    σ↦σ s(t) is continuous. Then the jointly
    indexed function `(σ,t)↦σ s(t)` is
    continuous on G×A. Indeed the preimage
    of a singleton `{y}` is the union over
    t∈A of the open sets
    `{σ | σ s(t)=y}×{t}`.
    This works for any discrete A and Y,
    not merely finite n. Applying this to
    `(σ,a(τ))` gives the continuity of the
    twisted middle factor `σ s(aτ)`.

(3) Multiplication and inversion are continuous
    in the discrete theta group. Therefore
    `b(σ,τ)=s(aσ)σ(s(aτ))s(aστ)⁻¹`
    is continuous as a theta-valued map.

(4) The original scalar inclusion
    `scalarLiftHom: (Fsep)ˣ→*Theta`
    is INJECTIVE. Both its domain and target
    carry the appropriate discrete topologies.
    The inverse image of a singleton under c
    equals the inverse image of the singleton
    under `scalarLiftHom∘c=b`.
    Hence c is continuous.

No cohomology theorem is assumed in steps 1–4.

## 2. Reduction to the ORIGINAL selected elliptic rational functions

The new isolated source `TauCetiThetaSelectedLiftContinuity.lean`
also defines the strictly more concrete proposition

  `SelectedThetaFunctionOrbitsContinuous W n`,

requiring for each TRUE torsion t only continuity of

  `σ ↦ W.functionFieldGaloisAction σ
          ((geometricLift W n t).function)`

into the DISCRETE actual `Fsep(E)ˣ`.

It proves a source-candidate
`selectedThetaLiftOrbits_of_functionOrbits`:
the elliptic POINT coordinate of the theta lift
has a continuous orbit ALREADY proved by original
Tau Ceti `W.PointCoeff.instContinuousSMul`.
Its exact `W.coe_smul_torsionCoeff` identity
identifies the action on original E[n] with
the underlying point action. Consequently
continuity of the ORIGINAL function coordinate
implies continuity of the whole theta lift
through the faithful embedding

  `ThetaLift ↪ W.PointCoeff × Fsep(E)ˣ`.

The source then proves the conditional returns

  `originalThetaScalar_continuous_of_functionOrbits`,
  `originalThetaBrauerH2_of_selectedLiftOrbits`,
  `originalThetaNormalizedInvariant_of_functionOrbits`.

The latter uses the ORIGINAL Tau Ceti Brauer/H²
normalization, with genuine n-torsion of the actual
theta Brauer class still required as a separate
arithmetic premise.

## 3. The precise last source arithmetic supplier: finite coefficients

The selected function orbit condition is true for the
original separable-closure elliptic function field,
by a finite algebraic-coefficient argument:

- Every f∈Fsep(E) has a UNIQUE expression
  `u(x)+v(x)y` with u,v∈Fsep(x), from the
  ORIGINAL Weierstrass function-field basis
  `Affine.FunctionField.basis` indexed by
  `Fin 2`.
- Each u and v is a ratio of polynomials in
  `Fsep[X]`, hence involves finitely many
  coefficients in Fsep. The Galois group fixes
  the generic x and y coordinates, and
  `functionFieldGaloisAction_basis_repr`
  shows its action is precisely coefficientwise
  on u and v.
- Each coefficient is separable-algebraic over F.
  Therefore its stabilizer under the absolute
  Galois group is OPEN in the Krull topology.
  The finite intersection of these open
  stabilizers fixes all coefficients of f,
  and therefore f itself. Translating that
  open stabilizer proves the orbit map
  `σ↦σ f` is continuous into the discrete
  function-field unit topology.
- The finite set of selected functions `s(t)`
  for t∈E[n] permits one common finite
  Galois layer if required for explicit
  finite factor sets. This is stronger
  mathematically than assuming a general
  arbitrary theta-cochain is continuous.

The EXACT pinned Tau Ceti source-theorem suppliers
for this final Lean implementation are:

| Pinned file under TauCeti/ | Git blob | Source output |
|---|---|---|
| `FieldTheory/KrullTopology.lean` | `59ffeadd7b64177629d97dcdde28c4d3de3b0e77` | `IsIntegral.isLocallyConstant_apply`, open algebraic-coefficient stabilizers |
| `FieldTheory/RatFunc/Galois.lean` | `57f4515fca9fc79e977f188f21c0a3370ee0f816` | `RatFunc.mapRingHom`, num/denom coefficient action |
| `AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Basis.lean` | `8b3b13b8dc9ed5cfa1bb065a41844cdb39339314` | exact `{1,y}` basis over `Fsep(x)` |
| `AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Galois/FixedField.lean` | `e355d98d7f0bf6b5adecefbc4b1b94398d362cae` | `functionFieldGaloisAction_basis_repr` |
| `AlgebraicGeometry/EllipticCurve/GaloisCohomology/Coefficients.lean` | `d56decb915934d38ff4ed5271ed59c73953a89e1` | `W.coe_smul_torsionCoeff`, `TorsionCoeff.instContinuousSMul`, finite E[n] |
| `FieldTheory/GaloisCohomology/Coefficients.lean` | `a0dcf3d43794f633597b5aef115e27d7dfcc20fe` | exact `UnitsCoeff F` and `unitsCoeff_continuousSMul` |
| `RepresentationTheory/Homological/ContCohomology/LowDegree.lean` | `9596754d63dfddae05765acc47fab267df58da7e` | exact `Z2` membership, original signed `d1`, continuous `B2` |

The **mathematical finite-coefficient argument is complete**;
the corresponding fully source-typed Lean lemma
`SelectedThetaFunctionOrbitsContinuous W n`
is still pending integration and compilation.
It should be formalized using the original
basis-repr and polynomial finite-support
coefficient machinery, not by postulating the
desired theta Brauer class as a condition.

## 4. Exact source files and trust boundaries

New native grwtsk Mathlib v4.34.1 proof candidate:

- `GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/CentralScalarFiniteOrbitContinuity.lean`,
  blob `9d74a4739947905598596fb079a6d5f872a05123`.
  Main declarations:
  `continuous_uncurry_discrete`,
  `continuous_of_injective_discrete_comp`,
  `continuous_scalar_boundary_of_selected_orbits`.

New isolated Tau Ceti v4.36.0-rc1 proof candidates:

- `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiThetaFiniteOrbitTopology.lean`,
  blob `bd082f21655bc66ba35fc1260e785b28100a7145`.
  A separate native-toolchain edition of those
  pure topology lemmas, without importing the
  incompatible grwtsk/math root.
- `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiThetaSelectedLiftContinuity.lean`,
  blob `660f1f8c0564b98ae4474c204f28ac64a1a4a9b2`.
  Source-typed original E[n]/theta/scalar-cochain
  continuity return, selected theta-function
  orbit reduction and normalized local
  Brauer invariant consumer.

The two pure-topology files are deliberately
separate editions for incompatible Lean versions.
They express the SAME mathematical proof, not two
independent validations or two distinct theorems.
The isolated provider depends only on original
Tau Ceti and its own local adapter sources,
not on the grwtsk/math v4.34.1 root.

## 5. Hostile check and remaining BSD obligations

A common FALSE shortcut is

  `UnitsCoeff F` has `ContinuousSMul G_F`
  therefore ANY map `G_F²→UnitsCoeff F` is continuous.

For a counterexample, take the Cantor profinite
group `G=(Z/2)^N` and discrete scalar group Z/2
with TRIVIAL continuous G-action. Let `c(σ,τ)`
be 1 exactly if the sequence σ contains
infinitely many nonzero coordinates. This set
is not open and c is not continuous, despite
the action being continuous. Therefore the
actual selected theta function finite descent
is logically indispensable.

Separately, source-normalized `ZMod n` still
requires n-torsion of the TRUE theta Brauer class
and the genuine geometric theta commutator
equals ORIGINAL `TauCeti.Isogeny.weilPairing`
with correct sign and argument order.
The local abelian Tate pairing must still
separate `H¹(F,E)[n]` against the dual
rational-point quotient. The true full
point-corrected local cone retains its
usually NONZERO `H²(U_v)=H¹(F,E)`
Weil–Châtelet residue; only GOOD
truncation is two-term. Real p=2 Tate,
p-power transitions, away-S reverse Kummer,
restricted products, derived Rlim,
Poitou–Tate, original Néron–Tate
regulator, Sha and COMPLEX central
Hasse–Weil L-jet remain OPEN.

**Literature:** Mumford, *On the Equations
Defining Abelian Varieties I* (1966),
DOI 10.1007/BF01389737; O'Neil,
*The Period-Index Obstruction for Elliptic
Curves* (2002), DOI 10.1006/jnth.2001.2770;
Antieau–Auel (2021), arXiv:2106.04291;
Silverman, *The Arithmetic of Elliptic Curves*
(2009), II.2/III.3; Nekovář,
*Selmer complexes* (2006), §6.1.
Prior published mathematics is not automatically
Lean verification or a new research discovery.
