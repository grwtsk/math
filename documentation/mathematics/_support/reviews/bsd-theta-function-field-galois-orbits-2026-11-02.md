> **2026-11-02 discrete-topology correction and stronger finite-family return:** The original source candidate `TauCetiThetaFunctionFieldOrbitContinuous.lean`, Git blob `6899d111f7bcb86ad2756b316d29214704fa230d`, used `letI : TopologicalSpace (E W).FunctionFieldˣ := ⊥` while claiming the topology was discrete. `⊥` is indiscrete, not discrete. The revised source `b4cea5bac589bd9a46d926515c0281779c896db0` uses `⊤` and adds `originalSelectedThetaFunctions_commonOpenStabilizer`: all finitely many actual selected `E[n]` theta functions have one common open Krull fixing set. The dependent `TauCetiThetaSelectedLiftContinuity.lean` now also uses `⊤` at its four former `⊥` occurrences (blob `34fb80d3c6efc400c5878a72620ffce138d1c965`). The formalization remains **SOURCE_PROOF_CANDIDATE**, with pinned Tau Ceti compilation, kernel replay and transitive axiom audit `NOT_RUN`. Historical narrative below remains original provenance, not evidence of successful verification.

# Genuine elliptic theta finite descent: local constancy of every original function-field Galois orbit

**Date:** 2026-11-02 (America/Los_Angeles).
**Canonical maintained repository:** grwtsk/math existing main, publication commit
read back after Git ref update.
**Immutable upstream:** The Tau Ceti contributors,
TauCetiProject/TauCeti `2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
Apache-2.0, `leanprover/lean4:v4.36.0-rc1`.
**New grwtsk source:** grwtsk contributors, MIT.
**Native grwtsk/math:** `leanprover/lean4:v4.34.1` (unchanged).

**VERIFICATION:** SOURCE_PROOF_CANDIDATE. In the current authoring
environment the Lean and lake executables are unavailable.
PARSING_NOT_RUN, ELABORATION_NOT_RUN,
COMPATIBLE_TAU_CETI_COMPILATION_NOT_RUN,
FRESH_KERNEL_NOT_RUN, TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
A declaration containing `by` is NOT a kernel-accepted theorem
without an actual compile and kernel replay. No new `sorry`,
`admit`, `axiom`, root imports, dependency/toolchain pins,
scheduler/Noe/CI execution or formal verification certificate.

## 1. Actual proof objective; result is not a proxy coefficient model

Let `F` be the original field and `K=SeparableClosure F`.
Let `W/F` be the original elliptic Weierstrass curve,
and `E=W_K` its true base change.
Let `G=Gal(K/F)`, with Tau Ceti's actual Krull topology.

For every ORIGINAL elliptic rational function
`z : (W⁄K).toAffine.FunctionField`, prove

  `IsLocallyConstant (fun σ : G => W.functionFieldGaloisAction σ z)`.

The theorem is valid in arbitrary characteristic (provided the
original separable-closure action is used), without assuming that
z is integral or that the function FIELD is algebraic over F.
The field `K(E)` is transcendental over `K`; the argument uses
finitely many ALGEBRAIC COEFFICIENTS in K, not a false claim that
the entire function-field element is algebraic over F.

The selected theta lifts
`geometricLift W n t : ThetaLift(E,n)` have functions
`f_t∈K(E)×`. Therefore the above general theorem gives
`SelectedThetaFunctionOrbitsContinuous W n` with NO
unproved selected-orbit premise. The previous source
`TauCetiThetaSelectedLiftContinuity.lean` then consumes
this statement to prove continuity of the ORIGINAL
theta scalar `thetaObstructionScalar a σ τ`
from the true point/coefficient group boundary.

The scalar's genuine 2-cocycle LAW was separately derived
from the original theta-group action and central kernel in
`TauCetiThetaGaloisScalarFactor.lean` and
`TauCetiThetaBrauerH2Transport.lean`.
Consequently the new source candidate constructs

  `originalThetaBrauerH2 W n a :
    continuousCohomology 2
      (ofDiscreteModule ℤ G (UnitsCoeff F))`

for each original continuous `a∈Z¹(G,E[n])`, without an
additional scalar continuity or factor-law parameter.
This is the ACTUAL original Tau Ceti Brauer coefficient
`UnitsCoeff F=Additive (Fsep×)`, not a replacement vector
space or a fitted numerical invariant.

## 2. Exact source mathematics: polynomial finite-support step

In pinned Tau Ceti `FieldTheory/KrullTopology.lean`,
`IsIntegral.isLocallyConstant_apply` says that for any
element `u∈K` integral over F, its orbit map
`σ↦σ(u)` is locally constant. Because every
`u∈SeparableClosure F` is algebraic (and integral)
over F, the lemma applies to every coefficient.

For an arbitrary polynomial `p∈K[X]`, the support
`p.support` is a FINITE set. Fix `σ₀∈G`. The
intersection of the finitely many neighborhoods
in which the orbit of `p.coeff i` agrees with its
value at `σ₀` is itself a neighborhood.
On it all supported coefficients match.
At every unsupported degree the coefficients are
zero, and field automorphisms preserve zero.
Consequently `p.map σ.toRingHom=p.map σ₀.toRingHom`
on that neighborhood. This proves the source
`polynomialOrbit_isLocallyConstant` without an
extra topological group action on polynomial objects.

The Lean candidate uses `Filter.eventually_all_finset`,
`Polynomial.mem_support_iff`, `coeff_map`,
and the pinned `IsIntegral.isLocallyConstant_apply`.
No count of polynomial degree or coefficient ranks
is assumed as a hypothesis.

## 3. Exact source mathematics: normalized RatFunc and the true {1,y} basis

For each rational function `r∈RatFunc K`,
the pinned original `RatFunc.num_mapRingHom`,
`RatFunc.denom_mapRingHom`, and
`RatFunc.num_div_denom` return

  `r = (algebraMap K[X] (RatFunc K)) r.num /
         (algebraMap K[X] (RatFunc K)) r.denom`.

The polynomial argument gives locally constant
orbits of the numerator and normalized denominator;
their intersection gives equality of BOTH after
Galois action. Recover `r` by the original
num/denom identity. This is the proof candidate
`ratFuncOrbit_isLocallyConstant`, with the
original Galois map rather than an abstract
rational-function quotient.

The ACTUAL elliptic Weierstrass function field
`K(E)` has the canonical pinned `Fin 2`
basis `{1,y}` over `RatFunc K`, declared in
`Affine/FunctionField/Basis.lean`. The pinned
`WeierstrassCurve.functionFieldGaloisAction_basis_repr`
identifies Galois action on each of the two
basis coordinates `b.repr z 0` and
`b.repr z 1` with that same original
rational-function coefficient action.

Both basis-coordinate orbits are locally constant.
Fix `σ₀`; intersect the two neighborhoods and
use injectivity of `b.repr` to conclude the
original K(E)-valued orbit is locally constant.
This closes `originalFunctionFieldOrbit_isLocallyConstant`.

Finally an actual original unit `u∈K(E)×`
has the same underlying field element under
the source `Units.map` Galois action.
The field orbit is locally constant;
`Units.ext` transfers this equality to
the UNIT orbit. Because the units have the
discrete coefficient topology, its orbit map
is continuous. This proves
`originalFunctionFieldUnitsOrbit_isLocallyConstant`.

## 4. Original pinned primary proof dependencies (exact commit)

| Original Tau Ceti path | Pinned blob | Required theorem |
|---|---|---|
| `TauCeti/FieldTheory/KrullTopology.lean` | `59ffeadd7b64177629d97dcdde28c4d3de3b0e77` | `IsIntegral.isLocallyConstant_apply` |
| `TauCeti/FieldTheory/RatFunc/Galois.lean` | `57f4515fca9fc79e977f188f21c0a3370ee0f816` | Original `RatFunc.mapRingHom` with Galois algebra map |
| `TauCeti/FieldTheory/RatFunc/NumDenom.lean` | `54f63a529c2b72e0fb90c58f6dfdc3fc030d1aac` | `num_mapRingHom`, `denom_mapRingHom`, normalized `num_div_denom` |
| `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Basis.lean` | `8b3b13b8dc9ed5cfa1bb065a41844cdb39339314` | `Affine.FunctionField.basis` of `K(E)` over `RatFunc K` |
| `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Galois/FixedField.lean` | `e355d98d7f0bf6b5adecefbc4b1b94398d362cae` | `functionFieldGaloisAction_basis_repr` |
| `TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Coefficients.lean` | `d56decb915934d38ff4ed5271ed59c73953a89e1` | Actual `W.TorsionCoeff n`, its continuous action and finite cardinality |
| `TauCeti/FieldTheory/GaloisCohomology/Coefficients.lean` | `a0dcf3d43794f633597b5aef115e27d7dfcc20fe` | Actual `UnitsCoeff F` and continuous Galois coefficient action |
| `TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean` | `9596754d63dfddae05765acc47fab267df58da7e` | Actual continuous `Z²`, original signed differential and `H²` |

The new source imports `TauCetiThetaSelectedLiftContinuity`
in the SAME isolated adapter directory, pinned original
`TauCeti/.../Galois/FixedField.lean`, and original
`TauCeti/FieldTheory/KrullTopology.lean`. This is
acyclic with the previous original theta/Brauer transport;
it does not import the native incompatible math root.

## 5. Exact outputs and the still-open arithmetic frontier

NEW `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiThetaFunctionFieldOrbitContinuous.lean`:

- `polynomialOrbit_isLocallyConstant`:
  finite-support polynomial coefficients;
- `ratFuncGaloisMap` and `ratFuncOrbit_isLocallyConstant`:
  original normalized RatFunc Galois action;
- `originalFunctionFieldOrbit_isLocallyConstant`:
  real elliptic function-field orbit via two basis coordinates;
- `originalFunctionFieldUnitsOrbit_isLocallyConstant`:
  actual rational-function UNIT orbit;
- `originalSelectedThetaFunctionOrbitsContinuous`:
  discharge the prior original selected-orbit premise;
- `originalThetaScalarContinuous`:
  actual theta scalar 2-cochain continuity;
- `originalThetaBrauerH2`:
  actual original continuous H² class from real group law and
  rational-function finite descent;
- `originalThetaNormalizedInvariant_of_nTorsion`:
  normalization through pinned original H²(mu_n) and
  `h2MuEquivZMod` with n-torsion as an EXPLICIT
  independent arithmetic premise.

The main reusable mathematical result is stronger
than a lemma about finitely many chosen theta lifts:
**every element of the entire elliptic function field
over the separable closure has a locally constant
absolute-Galois orbit**, even though the full
function field is not algebraic over F.
The proof uses only finitely many algebraic
coefficients *per element*.

A different valid proof route is to define the subfield
of functions whose absolute-Galois stabilizers are open,
show it contains K, generic x and generic y and is
closed under arithmetic operations, then use the
original function-field generation theorem to
conclude it equals K(E). That route shares the
same finite algebraic-coefficient premise, so it
is not an independent local duality proof.
The chosen {1,y} basis route is shorter and
has exact pinned consumers.

## 6. Source boundary and hostile counterexample

The original `UnitsCoeff F` Galois action being
continuous does **not** make an arbitrary
set-theoretic map `G×G→UnitsCoeff F` continuous.
An indicator for sequences in the Cantor
profinite group `(Z/2)^ℕ` with infinitely many
ones is discontinuous with discrete codomain
despite a trivial continuous action.
The SOURCE elliptic rational-function finite
coefficient proof is therefore indispensable.

Likewise an ordinary nonzero function `f∈K(E)`
is in general TRANSCENDENTAL over F; one cannot
invoke `Algebra.IsIntegral.isIntegral f` in
the entire elliptic function field. Doing that
would be an INVALID shortcut.
Only the finitely many coefficients of f in
the pinned {1,y}/RatFunc presentation are
separable-algebraic and have open stabilizers.

The following remain OPEN as original source
theorems, independent of finite-descent continuity:

1. **Choice and representative invariance** of
   the true `H¹(F,E[n])→H²(F,(Fsep)×)`
   period-index obstruction, with continuous
   scalar changes of arbitrary theta sections.
2. The genuine original Mumford theta
   **commutator = Tau Ceti's original Weil
   `e_n`**, including the exact source
   sign/argument order, and source-pinned
   polarization to the finite evaluation cup.
3. The real theta Brauer class killed by
   n (or an appropriate even-n correction)
   before invoking `h2KummerToUnits_range`.
   This is NOT a consequence of continuity.
4. The separating actual local **abelian**
   Tate pairing on `H¹(F,E)[n]` versus
   `E^vee(F)/nE^vee(F)` and its signed
   Poincare/Kummer adjunction.
5. Correct full untruncated point-cone
   `H²(U_v)=H¹(F,E)` Weil–Châtelet
   residue and good truncation, real p=2
   Tate modification, p-power transition,
   reverse outside-S unramified/Kummer,
   restricted product, compact derived
   Rlim and global Poitou–Tate.
6. Any noncircular comparison of the
   resulting arithmetic derived regulator
   to the original Néron–Tate height
   lattice and COMPLEX Hasse–Weil
   central L-jet; neither BSD-I/II nor
   Sha finiteness follows from this file.

**Next formal acceptance:** compile the isolated adapter
with `lake env lean --wfail` in original Tau Ceti
v4.36.0-rc1; repair any elaboration issues in
source exact `RatFunc.num_mapRingHom` and
`Affine.FunctionField.basis`; then independent
fresh kernel replay and full `#print axioms`
with exact source/module/toolchain identities.
No such verification has been performed.
