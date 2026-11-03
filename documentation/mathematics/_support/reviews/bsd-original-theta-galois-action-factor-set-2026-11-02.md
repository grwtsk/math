# Original elliptic theta: genuine group extension, Galois action and derived scalar factor

**Date:** 2026-11-02, America/Los_Angeles.
**Maintained mathematics:** grwtsk/math, existing main; publication commit
is bound after the source-blob readback.
**Original upstream mathematical authors/code:** The Tau Ceti
contributors, Apache-2.0, TauCetiProject/TauCeti immutable
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
Lean `v4.36.0-rc1`.
**New local source:** grwtsk contributors, MIT.
**Native grwtsk/math root:** Lean `v4.34.1`, unchanged.

**Status: SOURCE_PROOF_CANDIDATE.** No compatible Lean or lake
executable was present in the authoring runtime. Parsing NOT_RUN;
elaboration NOT_RUN; pinned Tau Ceti compile NOT_RUN; fresh
independent Lean kernel replay NOT_RUN; transitive axiom audit
NOT_RUN. Source text and exact immutable Git blobs can be
verified without verifying the proof term. No new axiom/sorry/admit,
root imports, toolchain/lockfile migration or native/CI/Noe
verification dispatch. These scripts are NOT an unconditional
proof of local abelian Tate duality or BSD.

## 1. The new decisive original upstream source discoveries

The preceding theta/Kummer source work used generic group
factor laws and hand-built cochain comparators. Pinned Tau Ceti
**already** has reusable complete original extension theory:

- `TauCeti/GroupTheory/GroupExtension/Basic.lean`,
  blob `18bae1a1724fb96496810736a1bdaa731432a0c9`:
  exact kernel/group-extension structure, section transport
  and point/constant identity fibre.
- `TauCeti/GroupTheory/GroupExtension/FactorSetOfSection.lean`,
  blob `a01aa68df8bf0b546293212a99bc45bb723f2d36`:
  original `TauCeti.GroupExtension.factorSet`,
  `factorSetFun_mul`,
  `isMulCocycle₂_factorSetFun`,
  `normalizeSection`, `sectionDiff`,
  `isMulCoboundary₂_div` and
  `factorSetToGroupExtensionEquiv`.
- `TauCeti/GroupTheory/GroupExtension/Cohomology.lean`,
  blob `f399ad0e027266716324c1b7c85622896152e8cc`:
  `TauCeti.FactorSet.cohomologyClass`,
  `cohomologyClass_eq_iff`,
  `nsmul_cohomologyClass_eq_zero_iff` and
  `GroupExtension.cohomologyClass_factorSet_eq`.
- `TauCeti/Algebra/GroupAction/Trivial.lean`,
  blob `60c1a4397a3ca7a503a738938acaec7490cb5143`:
  `trivialMulDistribMulAction` and the exact
  `trivialMulDistribMulAction_smul` rule.

These are upstream source proofs, not new locally invented
group-cocycle axioms. They must still be imported and
checked in the compatible original toolchain.

Other original source suppliers remain:
`Affine/FunctionField/TorsionDivisor.lean` blob
`0f61446aae1bba38a194ff71d170cf9e868e9e4d`,
`Affine/FunctionField/Divisor/Sum.lean` blob
`966862188a03cff2e5f503a25b9d369e26b648ab`,
`Affine/FunctionField/Translation/Basic.lean` blob
`9cdf4bb3a58491d48b8a3622ee10c9447cab2dea`,
`Affine/FunctionField/Galois/Basic.lean` blob
`562a808bcaeb0db70c918b2a447240717fdf3e04`,
`Affine/FunctionField/Galois/Divisor.lean` blob
`52697374b29a8efe552dbf87b34a515269885020`,
`GaloisCohomology/Coefficients.lean` blob
`d56decb915934d38ff4ed5271ed59c73953a89e1`,
`GaloisCohomology/Descent.lean` blob
`3dd14be3ae92e9a0b5d37c3fbaf6e03684292d4b`,
and `GaloisCohomology/WeilPairing/Basic.lean` blob
`d54088b59839bf055f1670006127a4d854adaa50`.

## 2. The original elliptic theta group is a concrete GroupExtension

The existing source
`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiOriginalGeometricTheta.lean`
has been extended with:

- `ThetaLift.mul_inv_function_of_point_eq`: for
  actual theta lifts `x,y` over the SAME elliptic
  n-torsion point, the group quotient `x*y⁻¹`
  has function-field unit `f_x/f_y`.
  The translation cancellation `tau_-T tau_T=id`
  is essential.
- `ThetaLift.existsUnique_scalar_mul_eq_of_point_eq`:
  the fibre over an original torsion point is a
  genuine *torsor* under the actual constant field
  `Fsepˣ`; the scalar is UNIQUE via
  `scalarLiftHom_injective`. This is a mathematical
  source theorem, not a regulator or chosen pairing.

NEW isolated `TauCetiThetaGroupExtension.lean`
packages the already defined original rational-function
group as the honest exact sequence

  `1 → Kˣ → Theta(E/K,n) → E[n](K) → 1`,
  `K=Fsep`.

The projection `thetaPointHom` returns the actual original
n-torsion elliptic point, via
`thetaPointTorsion`. The scalar inclusion is the existing
faithful `scalarLiftHom`. Exactness
`im(scalarLiftHom)=ker(thetaPointHom)` uses the
original function-field zero-divisor iff constant theorem;
surjectivity of the point projection comes from
the original torsion divisor/principality theorem.
`genuineThetaGroupExtension` is then literally a
`GroupExtension Kˣ Theta E[n]`.

Its scalar kernel lies in the original theta group centre,
so the quotient torsion-point action on constants is trivial.
`genuineTheta_inducesTrivialAction` passes this fact to
the SOURCE native `GroupExtension.InducesAction` API.
`genuineThetaNormalizedSection` uses original
`GroupExtension.normalizeSection`.
`genuineThetaFactorSet` uses Tau Ceti's original
`GroupExtension.factorSet`, and its 2-cocycle law
follows from `FactorSet.isMulCocycle₂`.
The source factor-set equivalence returns the same
original theta extension, not a synthetic matrix group.
The candidate `genuineThetaFactorSet_section_independent`
instantiates the original
`GroupExtension.cohomologyClass_factorSet_eq` to prove
independence of normalized sections in this INTERNAL
torsion-point-group cohomology. Its scope remains
`H²(E[n],Fsepˣ)`, not the arithmetic Galois/Brauer H².

**Important category distinction:** This internal factor-set
has class in
`H²(E[n](Fsep),Fsepˣ)` with TRIVIAL action of E[n]
on constants. The arithmetic period-index obstruction
lives in `H²(G_F,Fsepˣ)` with the NONTRIVIAL
Galois action on constants. These are NOT the
same H², and the `GroupExtension` conversion alone
does not prove Galois/Brauer descent or elliptic
Kummer orthogonality.

## 3. The original theta Galois action is group-theoretic

NEW isolated `TauCetiThetaGaloisGroupAction.lean`
extends the original `thetaLiftGalois` to an actual
`MulDistribMulAction G_F Theta(E/K,n)` source candidate:

- `galois_commutes_thetaTranslate_unit`:
  exact source function-field action intertwines
  the translation by `-T` with translation by
  `-σT`, not the opposite sign.
- `thetaLiftGalois_mul`,
  `thetaLiftGalois_one`, `thetaLiftGalois_id`,
  `thetaLiftGalois_comp`:
  the theta group multiplication and Galois
  action are compatible on the REAL original
  elliptic point and function field.
- `thetaLiftGaloisMulDistribMulAction`: the
  source action by group automorphisms.
- `thetaLiftGalois_scalar`,
  `scalarLiftHom_galois`: scalar constants are
  carried by the SAME genuine absolute-Galois
  action on `(Fsep)ˣ` as Tau Ceti's `UnitsCoeff`.

The existing `W.pointGaloisAction`,
`W.functionFieldGaloisAction` and
`functionFieldGaloisAction_translation` supply
these operations. The new action is not a
`ContinuousSMul` assertion for all theta
functions, which is a separately checked topology
/ finite-descent obligation.

## 4. The original theta raw scalar is EXACTLY a group boundary

NEW isolated `TauCetiThetaGaloisScalarFactor.lean`
connects the real source
`thetaObstructionScalar a σ τ`, defined earlier
from actual elliptic rational functions, to the
true nonabelian group boundary of the genuine
theta lifts at the original source E[n] cocycle:

  `scalarLift(thetaObstructionScalar a σ τ)
     = lift(a_σ) * (σ•lift(a_τ)) * lift(a_(στ))⁻¹`.

It does this with no independently supplied cocycle
value, by the new `ThetaLift.mul_inv_function_of_point_eq`,
the original point Galois cocycle identity,
`thetaObstructionScalar_spec` and faithful
`scalarLiftHom`.

`originalThetaFactor_unique_of_groupBoundary`
proves no other base-field scalar has the same
original group boundary.

Then `originalThetaFactor_twoCocycle`
derives the EXACT multiplicative Galois 2-cocycle law

  `c(σ,τ)c(στ,ρ)=σ(c(τ,ρ))c(σ,τρ)`

by associativity, the actual theta group Galois
action and its central scalar kernel, rather
than taking a separate factor-law proposition
as an arithmetic hypothesis. The proof reuses
the identical group algebra already tracked by
native `ThetaCentralFactorCocycle`, but is now
source-typed on the real geometric original.

## 5. Reduction of the real Brauer H² interface

The existing isolated `TauCetiThetaBrauerH2Transport.lean`
has been extended with `originalThetaScalarFactorLaw`,
`originalThetaUnitsCochain_mem_Z2_of_continuous`,
`originalThetaBrauerH2_of_continuous`,
`originalThetaNormalizedInvariant_of_continuous`,
and `originalThetaNormalizedInvariant_of_continuous_returns`.

The scalar 2-cocycle law is supplied from the
ORIGINAL theta action and true group boundary.
Accordingly the previous independently requested
`ThetaScalarFactorLaw` hypothesis is eliminated
for these new consumer interfaces.
To obtain a genuine
`H²(G_F,UnitsCoeff F)` from the raw factor one
still MUST prove
`ThetaScalarContinuous a`, continuity of its
actual scalar cochain, not merely the already
pinned `unitsCoeff_continuousSMul`.
To transport that class to `H²(F,mu_n)` and its
Brauer-normalized `ZMod n` coordinate one must
independently prove its actual n-torsion.
Source Tau Ceti already has
`h2KummerToUnits_injective`,
`h2KummerToUnits_range`,
`muNRepH2Equiv` and
`h2MuEquivZMod`; no new Brauer model is needed.

**Remaining geometric theorem:** the genuine function
commutator
  `f_T tau_-T(f_S)/(f_S tau_-S(f_T))`
must be proved equal to the original
`TauCeti.Isogeny.weilPairing` with exact
orientation/possibly inverse, via the SOURCE
`Isogeny.algebraMap_weilPairing`
(blob `8957e64b52bc94ada398c4724b256630558397cb`).
The Galois group and factor-set construction do
not substitute for this Weil reciprocity theorem.
The original theta Kummer vanishing also needs
CONTINUOUS coboundary/section normalization on
the original Galois complex and the fixed Kummer
cocycle representative, not merely a raw
strict crossed-function identity.

## 6. Independent exact hostile group diagnostic

A deterministic synthetic Heisenberg model
`H_n=(a,b,c) mod n` with multiplication
`(a,b,c)*(d,e,f)=(a+d,b+e,c+f+a e)`,
central constant coordinate `c` and
involutive Galois action `(a,b,c)↦(-a,-b,c)`
was tested at n=2,3,4,5,7,8,9,11,13,16.
For 2,000 random source lifts at every modulus
(seed `random.Random(20261102)`) all 8 triples
of Galois C₂ satisfied the exact scalar 2-cocycle
identity: 160,000 comparisons in integer
arithmetic. An additional 40,000 exact comparisons
showed uniqueness of the central scalar ratio
between two lifts above the SAME projection point.
No floating point, statistical bound or tolerance.
These synthetic checks are **not** a genuine elliptic
curve, a Galois continuity proof or Lean kernel
acceptance. They detect noncommutative sign errors
and missing point-fibre hypotheses.

## 7. Exact new source blobs and acceptance provenance

The exact Lean source candidates authored for this increment are:

- `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiOriginalGeometricTheta.lean`:
  blob `74c12f32bed4567731183736a0f2b748e86ddecc`.
  Two new rational-function quotient / unique scalar-fibre proofs.
- `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiThetaGroupExtension.lean`:
  blob `98e1b2047b82fa2970d315a2f520675f3a654456`.
  Source exact `GroupExtension`, central scalar kernel,
  factor-set construction, native cocycle, internal
  section-independence and extension equivalence.
- `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiThetaGaloisGroupAction.lean`:
  blob `1e0c4c0eac356a0ef4103f1c5711f41ae57d063c`.
  True theta lift Galois action as a group homomorphism
  with point, function, scalar and translation compatibility.
- `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiThetaGaloisScalarFactor.lean`:
  blob `327d67868b3ce312dc480987856b16385431dc80`.
  Original raw scalar equals the literal nonabelian
  theta Galois boundary and obeys a 2-cocycle law,
  with no factor-law data premise.
- `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiThetaBrauerH2Transport.lean`:
  blob `4457197b2c590dc8c296f7714d718d53a7c72fae`.
  Existing H² transport strengthened to eliminate
  a separate `ThetaScalarFactorLaw` premise; new
  canonical Brauer H² requires only actual
  `ThetaScalarContinuous`, and normalized invariant
  additionally requires n-torsion of that genuine class.

No proof described here has been kernel checked. The
two internal/Galois factor-set constructions reuse
the same original elliptic geometry and the same
group-algebra identities; they are not
independent mathematical proofs of the Weil pairing.

## 8. Review, proof scope and next source acceptance

1. Compile the exact new geometric theta and Galois
   adapters in a fresh compatible Tau Ceti
   v4.36.0-rc1 environment, with the adapter
   directory on `LEAN_PATH`; collect real
   `lake env lean --wfail` outcomes.
   Not run in the authoring environment.
2. Import original point-action, algebraic
   divisor and `GroupExtension` source APIs
   at pinned blobs; audit all elaborated implicit
   `G` actions, normalization arguments and
   `Z2` types. Fresh kernel replay and
   `#print axioms` are separate acceptance facets.
3. Prove true FINITE Galois descent/continuity of
   the raw original `Fsepˣ` theta scalar
   cochain and the scalar `1`-cochain relating
   arbitrary choices of theta lifts (the
   difference must be a genuine `B²) boundary).
4. Prove original theta `H²` n-torsion
   and original commutator–Weil pairing
   identity with exact source sign.
5. Then use the already published
   `ThetaToKummerLocalDuality` consumer
   only after actual theta polarization and
   local abelian Tate separation are proved
   for the original E/E^vee and principal
   polarization. Do not substitute finite
   smooth-coefficient perfectness for
   abelian-variety local Tate duality.
6. Keep the genuine original full local
   point-corrected cone higher
   `H²(U_v)=H¹(F,E)` Weil–Châtelet residue.
   Good truncation, real p=2 Tate corrections,
   original p-power transitions, restricted
   product reverse equality, derived Rlim,
   Poitou–Tate and a comparison with the
   COMPLEX Hasse–Weil central jet all remain
   distinct OPEN arithmetic/analytic gates.

**Closest primary mathematics:** Mumford,
*On the equations defining abelian varieties I*
(1966), DOI 10.1007/BF01389737; O'Neil,
*The Period-Index Obstruction for Elliptic Curves*
(2002), DOI 10.1006/jnth.2001.2770;
Antieau–Auel, *Explicit descent on elliptic curves
and splitting Brauer classes* (2021),
arXiv:2106.04291, Proposition 2.10;
Fisher, *The Cassels–Tate pairing and the
Platonic solids* (2003), §2.1;
Milne, *Arithmetic Duality Theorems*, I §3.
These are mathematical sources, not
automatically checked Lean imports.
