# Original elliptic theta–Weil comparison: genuine bilinearity and one oriented basis-function certificate

**Date:** 2026-11-02, America/Los_Angeles.
**Maintained repository:** `grwtsk/math`, existing main; immutable publication
revision is recorded upon successful Git readback.
**Pinned original mathematical and Lean sources:** The Tau Ceti
contributors, Apache-2.0, `TauCetiProject/TauCeti`
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
Lean `v4.36.0-rc1`.
**Additional source authorship:** grwtsk contributors, MIT.
**Native grwtsk/math root:** Lean `v4.34.1`, unchanged.

**Status:** SOURCE_PROOF_CANDIDATE. No Lean/lake binary available in
the current authoring runtime. Parsing NOT_RUN; elaboration NOT_RUN;
compatible pinned Tau Ceti compilation NOT_RUN; fresh independent
kernel replay NOT_RUN; full transitive axiom audit NOT_RUN. Git blob
publication/readback and integer diagnostics are separate evidence,
NOT proofs accepted by the Lean kernel. No `sorry`, `admit`, new
`axiom`, root imports, Mathlib lockfile/toolchain modification,
native Noe/CI dispatch or COMPLEX BSD claim.

## 1. The actual source theorem that makes the target rank two

Tau Ceti already proves at the pinned immutable revision:

- `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/MulByInt/Torsion/Structure.lean`,
  blob `843bb6ef86790be5c4728c71655897117ee6a72d`,
  `WeierstrassCurve.torsion_addEquiv_prod`:
  `Nonempty (E[n] ≃+ (ZMod n × ZMod n))` when `n` is
  nonzero/invertible over the separably closed original field;
  and `WeierstrassCurve.nonempty_basis_torsionBy`:
  `Nonempty (Module.Basis (Fin 2) (ZMod n) E[n])`.
  These are **upstream proved elliptic torsion structure**,
  not an assumption or chosen arbitrary vector space.
- `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/MulByInt/WeilPairing/Basic.lean`,
  blob `8957e64b52bc94ada398c4724b256630558397cb`,
  independently defines `Isogeny.weilPairing` on the ORIGINAL
  `Submodule.torsionBy ℤ` of true elliptic points,
  proves its additivity, diagonal alternation
  `Isogeny.weilPairing_self`, Galois-compatible root-of-unity
  coefficient, and exact
  `Isogeny.algebraMap_weilPairing`:
  `e_n(S,T)=τ_S(g_T)/g_T`.
- `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/MulByInt/DivisorPullback.lean`,
  blob `720ce51d8b39611ef3fece06386e95a6f2d3160f`,
  proves `Isogeny.exists_principal_eq_weilPairingDivisor`:
  the genuine function `g_T` with
  `div(g_T)=[n]^*((T)-(O))` exists at every true
  n-torsion point. The same source contains
  `weilPairingDivisor_def` and
  `weilPairingDivisor_eq_sum` describing the ORIGINAL
  isogeny fibres, not proxy rank-two arithmetic.
- `TauCeti/GroupTheory/Commutator.lean`,
  blob `89065121c96961a2b03b6d0666f01643c6833419`,
  and original Mathlib's
  `commutatorElement_mul_left_eq_conj_mul`,
  `commutatorElement_mul_right_eq_mul_conj`:
  actual noncommutative commutator expansion laws,
  with all centrality hypotheses kept visible.
- Original grwtsk/math isolated
  `TauCetiOriginalGeometricTheta.lean`, blob
  `74c12f32bed4567731183736a0f2b748e86ddecc`,
  constructs the genuine `ThetaLift` from
  `div(f_T)=n((T)-(O))` and multiplication
  `(T,f_T)(S,f_S)=(T+S,f_T τ_{-T}(f_S))`,
  faithful central scalar units and its rational-function
  commutator `f_T τ_{-T}(f_S)/(f_S τ_{-S}(f_T))`.
- Prior isolated
  `TauCetiThetaCommutatorRootsOfUnity.lean`,
  blob `40afe0f0ecdc691db1bcc84280ad0306834498f7`,
  derives that the **original geometric theta commutator**
  has order dividing n and produces a genuine
  `thetaCommutatorInMuN : rootsOfUnity n F`.
  Its scope is roots-of-unity coefficient inclusion,
  NOT yet equality with the ORIGINAL Weil pairing.

## 2. FIRST new connection: actual theta commutator is alternating AND biadditive

New isolated `TauCetiThetaCommutatorBilinear.lean`,
blob `95511d1268c69993d424b43ecfb9d3cd10e542fa`,
proves source candidates:

`centralCommutator_mul_left`,
`centralCommutator_mul_right`,
`thetaScalar_lift_eq_commutator`,
`thetaScalar_mul_left`,
`thetaScalar_mul_right`,
`thetaScalar_left_scalar`,
`thetaScalar_right_scalar`,
`thetaScalar_eq_of_points`,
`thetaScalar_self`,
`originalTorsionLift`,
`thetaPointPairing_add_left`,
`thetaPointPairing_add_right`,
`thetaPointPairing_self`,
`thetaPairingAddHom`,
`thetaPairingAddHom_self`.

All definitions retain the ACTUAL original theta rational-function
group, actual n-torsion point module and rootsOfUnity n F. The central
kernel was already constructed from the original divisor-constant
criterion and remains a real field `Fˣ`, not a freely fitted scalar
module or Heisenberg matrix.

The proof is straightforward noncommutative group algebra.
For any x,y,z in this TRUE theta group the commutators are central, so

  `[xy,z] = [x,z][y,z]`,
  `[x,yz] = [x,y][x,z]`,
  `[x,x]=1`.

If two theta lifts x,x' have the same ORIGINAL point,
the prior theta-fibre theorem supplies a UNIQUE central scalar c
with `x=c*x'`. The commutator is unchanged by central rescaling.
Thus the commutator descends from the actual lifts to the original
point group `E[n](F)`. It yields a genuine alternating **biadditive**
map

  `thetaPairingAddHom :
      E[n] →+ E[n] →+ Additive (rootsOfUnity n F)`.

No selected alternating map or perfect pairing is a premise;
the map is directly built from the original real theta commutator.
The pinned Tau Ceti original Weil pairing already has this exact
carrier and coefficient type. The new source candidate does NOT
assert the maps are equal at this stage.

## 3. SECOND connection: arbitrary alternating pairings compare on ONE oriented basis pair

New native Mathlib-only
`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/RankTwoAlternatingPairingDetector.lean`,
blob `1adc7527f48d2b3fb25a703adf6a1e8114dce3a3`,
proves this elementary group theorem:

Let M be an abelian group generated by u,v using finite natural
sums, and let `B,C:M→+M→+N` be any TWO alternating biadditive
maps to an additive abelian group N. Then

             `B=C ↔ B(u,v)=C(u,v)`.

The **proof** needs only the alternation identities
`B(x,x)=0`, `C(x,x)=0`, which imply
`B(u,v)+B(v,u)=0` and likewise for C. Agreement on the
one ordered value (u,v) fixes both rows, then natural repeated
additivity fixes all x,y. No division by 2 is used; n=2 is
included without assuming oddness.

New isolated source `TauCetiThetaWeilRankTwoCriterion.lean`,
blob `dc924326cc165d4ddd7fb8e3ad5d6ec98e3e5dd3`,
includes the corresponding compatible-toolchain algebra, derives
the genuine two original torsion generators
`firstTorsionGenerator`, `secondTorsionGenerator`
from the PINNED `WeierstrassCurve.torsion_addEquiv_prod`,
and proves the source candidate

  `thetaPairingAddHom W.toAffine n =
      Isogeny.weilPairing W n hN`
  `↔`
  `thetaPairingAddHom W.toAffine n P Q =
      Isogeny.weilPairing W n hN P Q`

where P,Q are the chosen ORIGINAL oriented generators.
The isolated source repeats the small generic proof rather
than importing an incompatible native Lean v4.34.1 module;
this is ONE mathematical lemma in TWO uncompiled editions,
not two independent kernel receipts.

The source has separate conditional positive and reciprocal
function-ratio endpoints. If the original theta commutator at
P,Q equals the true Weil pullback ratio, the original pairings
agree on ALL E[n]. If it equals the inverse ratio,
the theta pairing is the NEGATIVE original Weil pairing.
At n>=3 this distinction is generally visible, even when
both pairings are nondegenerate and alternating.

## 4. THIRD connection: the Weil basis function is PROVIDED by original geometry

New isolated `TauCetiThetaWeilOneFunctionGate.lean`,
blob `8e6ad4b2400e28aff21935467bac454b8901a4a1`,
uses pinned
`Isogeny.exists_principal_eq_weilPairingDivisor`
to construct one actual original rational-function unit
`originalBasisWeilFunction W n hN` with

  `div(g_Q)=[n]^*((Q)-(O))`.

Thus the earlier endpoint's otherwise free function
`g:W.toAffine.FunctionFieldˣ` and matching divisor
certificate `hg` are no longer user-supplied arithmetic
hypotheses. They are obtained from a *proved upstream
geometric theorem* (while the locally authored source
still awaits the compatible Lean compile).

The remaining proposition is now ONE LITERAL
original function-field identity for the chosen ordered pair:

  `OriginalBasisFunctionRatio W n hN:`

  `f_P · tau_{-P}(f_Q) / (f_Q · tau_{-Q}(f_P))`
  `= tau_P(g_Q) / g_Q`.

Here `div(f_P)=n((P)-(O))`,
`div(f_Q)=n((Q)-(O))`,
`div(g_Q)=[n]^*((Q)-(O))`,
and ALL f_P,f_Q,g_Q are true source original
elliptic rational functions, not artificial
symplectic matrices. The source proves that
this one ORIGINAL identity, if supplied by a
new source [n]-pullback/Weil-reciprocity proof,
is sufficient to conclude
`thetaPairingAddHom = Isogeny.weilPairing`
on ALL torsion pairs. Its logical status is a
ONE-function geometric certificate obligation.
The source DOES NOT silently assume this identity
true, nor call it already formally accepted.

## 5. Exact finite hostile algebra checks, not elliptic or Lean verification

Deterministic Python integer modular arithmetic (seed 20261102)
on the finite Heisenberg group
`H_n={(a,b,c) mod n}`,
`(a,b,c)(d,e,f)=(a+d,b+e,c+f+a e)`:

- **200,000 exact noncommutative group identities** at
  n=2,3,4,5,7,8,11,13: commutator multiplicativity
  in BOTH arguments, diagonal alternation, invariance
  under central scalar rescaling of each argument.
- **215,050 exact rank-two pairing comparison checks**
  at n=2,3,4,5,7,8,11. For every scalar multiple
  `λ∈ZMod n` of the determinant pairing and every
  ordered point pair in `(ZMod n)^2`, comparison on
  the oriented unit basis is equivalent to comparison
  on ALL pairs. No mismatch.
- Hostile sign: at n=5, the determinant at
  `P=(1,0)`, `Q=(0,1)` is +1, while the
  reversed pair has -1≡4 mod 5. These are
  distinct. At n=2 the sign flip is invisible,
  so n=2 alone is insufficient for orientation.

Synthetic groups and modular computations check the
group algebra and branch orientation only. They are
NOT source elliptic torsion points or genuine
Weierstrass rational functions; they DO NOT prove
the one remaining geometric ratio, compile Lean,
verify a kernel proof term, or prove BSD.

## 6. Acceptance and remaining arithmetic scope

**Needed before calling the new source accepted:**
run the native `RankTwoAlternatingPairingDetector.lean`
under pinned math Lean v4.34.1 and all three
isolated adapters under original Tau Ceti
Lean v4.36.0-rc1, with exact upstream and
adapter search paths. Repair elaboration/
API mismatches, then obtain independent
fresh kernel replay, full transitive
`#print axioms`, and exact declaration
plus dependency-closure receipts.
These were NOT_RUN, and the lack of
`sorry` is not acceptance.

**Exact next source-specific geometric supplier:**
derive the ONE `OriginalBasisFunctionRatio` for
the original `P,Q` and chosen pinned `g_Q`,
using the source isogeny divisor pullback,
original point-place translation,
line-bundle/cubical identity or Weil
reciprocity. The source old positive and
inverse sign branches remain distinct.
The classical theta-group commutator equals
the Weil pairing in the standard
Mumford/Cremona convention; comparison
with the EXACT Tau Ceti `tau_{-P}`
pullback and `Isogeny.algebraMap_weilPairing`
must still prove the sign, not guess it.

**Unclosed downstream arithmetic:** genuine
period-index Brauer H² n-torsion and its
exact normalization, local abelian Tate
pairing separating `H¹(F,E)[n]`,
the E/E^vee Kummer annihilator, outside-S
unramified reverse inclusion, real p=2
Tate cohomology, original p-power
transition maps, restricted products,
derived Rlim, global Poitou–Tate and
actual Néron–Tate regulator to the
COMPLEX Hasse–Weil central L-jet.
The FULL local point-corrected cone can
have nonzero `H²(U_v)=H¹(F,E)`
Weil–Châtelet residue, so good truncation
remains essential. No source acceptance
of BSD-I/II, Sha finiteness or complex
leading coefficient is implied.

**Primary mathematical sources:** Silverman,
*The Arithmetic of Elliptic Curves*
(2nd ed.), III.6, III.8;
Mumford, *On the Equations Defining
Abelian Varieties I* (1966),
DOI 10.1007/BF01389737;
Cremona–Fisher–O'Neil–Simon–Stoll,
*Explicit n-descent on elliptic curves I. Algebra*
(Definition 1.25, Lemma 1.30),
with explicit warning on geometric sign;
Antieau–Auel, *Explicit descent on elliptic
curves and splitting Brauer classes*,
Proposition 2.10 and Example 2.11
(classical theta commutator and Weil
polarization); and the genuine pinned
Tau Ceti modules identified above.
These citations are classical geometric
motivation, not a Lean kernel receipt.
