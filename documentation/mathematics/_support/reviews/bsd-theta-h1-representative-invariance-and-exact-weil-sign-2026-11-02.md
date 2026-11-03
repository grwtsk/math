# Genuine elliptic theta obstruction on H¹, and the exact geometric commutator–Weil sign frontier

**Date:** 2026-11-02 (America/Los_Angeles).
**Repository:** grwtsk/math, existing main, publication commit identified after readback.
**Pinned upstream mathematical source:** TauCetiProject/TauCeti
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
The Tau Ceti contributors, Apache-2.0, Lean v4.36.0-rc1.
**New source authors:** grwtsk contributors (MIT).
**Native math root:** Lean v4.34.1 and its pinned Mathlib, unchanged.
**Acceptance:** SOURCE_PROOF_CANDIDATE; PARSING_NOT_RUN, COMPILATION_NOT_RUN,
PINNED_TAUCETI_IMPORT_NOT_RUN, FRESH_KERNEL_REPLAY_NOT_RUN,
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. All source proofs must be compiled
in their correct toolchains before any Lean verification claim.
No native Noe/CI/scheduler dispatch and no new `sorry`, `admit`,
`axiom`, toolchain/Mathlib pin or umbrella import changes.

## 1. Exact pinned original source comparison

| Immutable Tau Ceti source | Blob | Exact mathematical contribution |
|---|---|---|
| `RepresentationTheory/Homological/ContCohomology/LowDegree.lean` | `9596754d63dfddae05765acc47fab267df58da7e` | `d0_apply`, `B1=(d0).range`, `H1pi_eq_iff`, signed `H2pi_eq_iff` and `mem_B2_iff'` |
| `AlgebraicGeometry/EllipticCurve/GaloisCohomology/Coefficients.lean` | `d56decb915934d38ff4ed5271ed59c73953a89e1` | genuine discrete `W.TorsionCoeff n=E[n](Fsep)` with original continuous Galois action |
| `AlgebraicGeometry/EllipticCurve/Affine/FunctionField/TorsionDivisor.lean` | `0f61446aae1bba38a194ff71d170cf9e868e9e4d` | genuine theta lift rational function with `div(f_T)=n([T]-[O])` |
| `AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Galois/Basic.lean` | `562a808bcaeb0db70c918b2a447240717fdf3e04` | original function-field Galois action and translation interchange |
| `AlgebraicGeometry/EllipticCurve/Isogeny/MulByInt/WeilPairing/Basic.lean` | `8957e64b52bc94ada398c4724b256630558397cb` | `Isogeny.algebraMap_weilPairing` and actual Weil `e_n(S,T)` from `g_T` with `div(g_T)=[n]^*([T]-[O])` |
| `AlgebraicGeometry/EllipticCurve/GaloisCohomology/WeilPairing/Basic.lean` | `d54088b59839bf055f1670006127a4d854adaa50` | genuine `W.torsionCoeffWeilPairing` and its Galois equivariance |
| `GroupTheory/Commutator.lean` | `89065121c96961a2b03b6d0666f01643c6833419` | original commutator power calculations; `Commute.commutatorElement_pow_left` at central commutators |
| `FieldTheory/GaloisCohomology/Coefficients.lean` | `a0dcf3d43794f633597b5aef115e27d7dfcc20fe` | `UnitsCoeff F=Additive (Fsep×)` with original continuous Galois action |

Previous isolated original sources at the same upstream pin
`TauCetiOriginalGeometricTheta.lean` (blob
`74c12f32bed4567731183736a0f2b748e86ddecc`),
`TauCetiOriginalGeometricThetaGalois.lean` (blob
`827f67dc184ee01216ee9588b9819a81e20cbfd8`),
`TauCetiThetaGaloisGroupAction.lean` (blob
`1e0c4c0eac356a0ef4103f1c5711f41ae57d063c`),
`TauCetiThetaGaloisScalarFactor.lean` (blob
`327d67868b3ce312dc480987856b16385431dc80`),
and corrected `TauCetiThetaFunctionFieldOrbitContinuous.lean`
(blob `b4cea5bac589bd9a46d926515c0281779c896db0`)
provide the ACTUAL theta group law, original Galois
action, scalar injection, cochain factor identity,
and finite-coefficient continuity. All remain
uncompiled source candidates.

## 2. The exact H¹ representative-change proof, not just section independence

Let `a,b:Z1(G_F,W.TorsionCoeff n)` represent the SAME original
continuous `H1` class. The source pinned
`H1pi_eq_iff` and `B1=(d0).range` supply the genuine
`t:W.TorsionCoeff n` such that

  `b_sigma = a_sigma + sigma•t - t`.

This is **not** the previously solved easier problem of changing
the chosen theta lift of a FIXED cocycle. It is a change of
the original E[n]-valued H¹ representative.

Choose the actual elliptic function-field lift
`v=geometricLift t`. Define

  `g_sigma = v^-1 * geometricLift(a_sigma) * sigma(v)`.

The theta group projection maps `g_sigma` to exactly
`-t+a_sigma+sigma(t)=b_sigma`.
The original rational-function fibre torsor
`ThetaLift.existsUnique_scalar_mul_eq_of_point_eq`
then constructs the UNIQUE `k_sigma∈(Fsep)×` satisfying

  `g_sigma = scalarLift(k_sigma)*geometricLift(b_sigma)`.

**No scalar is chosen to fit a desired Brauer class.**
The scalar is the unique original function-field ratio.

The genuine source `gauge_boundary` group identity gives

  `b_g(sigma,tau) = v^-1*b_a(sigma,tau)*v`.

Since `b_a` lies in the ORIGINAL central scalar field,
it commutes with v, hence `b_g=b_a` IDENTICALLY.
Multiplying the original scalar-corrected section
gives the exact 2-cochain relation

  `c_a(sigma,tau) =
      k_sigma * sigma(k_tau) * k_(sigma*tau)^(-1)
      * c_b(sigma,tau)`.

This is not an assumption of H¹ independence but a
direct calculation from the real theta group multiplication.

**Continuity of the correction:** the previously
constructed selected real theta function Galois
orbit maps are continuous, as are a,b and the
fixed selected lift v. The expression
`g_sigma * geometricLift(b_sigma)^-1` is therefore
continuous as a map to the actual DISCRETE theta group.
It is the image of k under the faithful scalar inclusion.
Continuity reflects through this injective discrete
map, so `sigma↦k_sigma` is genuinely continuous.
The historic incorrect `⊥` (indiscrete) topology
was repaired to `⊤` at source commit
`ba9eb7adb689a56c2c952cc9e3c2b51d042f6dec`.

The existing original source
`TauCetiThetaBrauerH2Transport.originalUnitsH2_eq_of_continuousSectionChange`
consumes that pointwise 2-coboundary and the
CONSTRUCTED continuous k to give equality in
the original `H2(G_F,UnitsCoeff F)`, transported
to canonical `continuousCohomology 2`.

The new source candidate `TauCetiThetaHOneClassInvariant.lean`
also defines an actual SET MAP

  `originalThetaObstructionOnHOne :
     H1(G_F,E[n]) → continuousCohomology 2(G_F,UnitsCoeff F)`

by choosing a genuine quotient representative and
proving its return is independent of that choice.
It is **not** declared an additive homomorphism:
period-index theta obstructions are quadratic,
and linearizing them would be an unlicensed
mathematical strengthening.

## 3. The commutator is actually n-torsion (a new source bridge)

NEW native Mathlib `CentralCommutatorNTorsion.lean`
and isolated pinned `TauCetiThetaCommutatorRootsOfUnity.lean`
use only the ACTUAL original theta group:

- Each `x:ThetaLift(E/Fsep,n)` projects to a genuine
  n-torsion elliptic point.
- Hence `x^n` lies above O, and the original
  `exists_scalarLift_of_point_eq_zero` makes
  `x^n` a constant-field scalar, therefore central.
- The commutator `[x,y]=xyx^-1y^-1` already lies
  in that same source central field. The pinned
  `Commute.commutatorElement_pow_left` gives
  `[x,y]^n=[x^n,y]=1`.
- The ORIGINAL rational-function
  `commutatorFunction x y` equals the
  function field value of the actual theta GROUP
  commutator, because
  `xyx^-1y^-1=(xy)(yx)^-1` and the original
  `ThetaLift.mul_inv_function_of_point_eq`
  computes the literal quotient of functions.
- The already published
  `thetaCommutatorScalar_spec` makes that genuine
  group scalar exactly the original selected
  field unit, not an artificially fitted character.
  Therefore `thetaCommutatorScalar x y` has n-th
  power 1 and yields a real
  `thetaCommutatorInMuN x y : rootsOfUnity n F`.

This is a genuine coefficient identification,
but the original Weil pairing is an independently
defined `rootsOfUnity n F`-VALUED alternating map.
Equal coefficient types and roots-of-unity bounds
alone do NOT prove the pairings equal.

## 4. The EXACT geometric Weil comparison and sign obstruction

The original Tau Ceti Weil pairing is not defined by
the theta commutator. Its pinned source
`Isogeny.algebraMap_weilPairing` proves

  `algebraMap_F(e_n(S,T)) = tau_S(g_T)/g_T`

for the genuine source function g_T with divisor
`[n]^*([T]-[O])`. The actual theta commutator is

  `C(S,T)= f_S*tau_-S(f_T)/(f_T*tau_-T(f_S))`,
  `div(f_S)=n([S]-[O])`,
  `div(f_T)=n([T]-[O])`.

The new `TauCetiThetaOriginalWeilSignReturn.lean`
retains the pinned type
`Submodule.torsionBy ℤ E.Point (n:ℤ)`
and SOURCE exact `WeilPairingDivisor`.
It proves conditional, sign-sensitive transfer:

  `C(S,T)=tau_S(g_T)/g_T`
      **implies** `thetaCommutatorInMuN(S,T)=e_n(S,T)`;

  `C(S,T)=g_T/tau_S(g_T)`
      **implies** `thetaCommutatorInMuN(S,T)=e_n(S,T)^(-1)`.

The exact signed geometric function identity remains
UNPROVED by the pinned Lean source candidates.
The source `[n]`-divisor pullback, actual translation
action and Weil reciprocity must establish WHICH of
these two rational-function identities holds.
Because inversion can differ at odd n, do not
choose the sign by a finite n=2 test or
the target of a BSD argument.

**External comparison (separate from pinned source):**
Cremona–Fisher–O'Neil–Simon–Stoll,
*Explicit n-descent on elliptic curves I. Algebra*,
Definition 1.25 and discussion of the inverse-image
theta group, writes the commutator convention
`xyx^-1y^-1 = alpha(e_n(beta x,beta y))`
for its standard theta extension, but warns
that identifying the precise Silverman
function-field convention involves sign choices.
Brian Conrad's lecture notes on abelian varieties
explain that the duality map induced by
`O([O])` and a reciprocal function ratio can each
introduce a sign that cancels. Literature verifies
the classical theorem; it does not automatically
verify that the PARTICULAR Tau Ceti
`thetaTranslate(T)=translation(-T)` source
has already been matched to that convention.

The actual sign identity has to be proved at the
pinned source, rather than importing a different
Heisenberg convention or independently chosen
orientation.

## 5. Independent exact finite tests, not elliptic/Lean verification

Deterministic exact modular Heisenberg group
`H_n={(a,b,c) mod n}` with product
`(a,b,c)*(d,e,f)=(a+d,b+e,c+f+a e)`
and true involutive `C2` action
`(a,b,c)↦(-a,-b,c)`, seed
`random.Random(20261102)`.

- 240,000 exact noncommutative equalities
  across n=2,3,4,5,7,8,9,11,13,16
  validate the source gauge correction
  `b_(v^-1uv)=b_u` and
  `b_u=δk*b_u'` for arbitrary selected
  scalar sections and genuine H¹ gauge t.
  These cases include mod-5 where
  `[x,y]≠[y,x]`, exposing sign mistakes.
- 44,000 exact modular commutator checks
  across n=1,2,3,4,5,7,8,9,11,13,16:
  the actual scalar commutator and the
  first lift's n-th power are central,
  and the commutator's n-th power is 1.

These are FINITE GROUP algebra diagnostics only.
They are not Tau Ceti Lean parsing,
a kernel certificate, actual elliptic
function-field divisor calculations,
continuity of genuine Galois cochains,
or a proof of the theta/Weil equality.

## 6. Exact published source candidates and scope

The new source paths are:

- `GRWTSK/.../ThetaHOneGaugeBoundary.lean`:
  pure group gauge, central scalar change
  and derived 2-coboundary.
- `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiThetaHOneRepresentativeGauge.lean`:
  actual `H1pi_eq_iff` witness t,
  true original theta lift over b_sigma,
  unique scalar k_sigma and its
  continuous source proof.
- `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiThetaHOneClassInvariant.lean`:
  source factor 2-coboundary, original
  continuous H² class equality, and
  representative-independent source H¹→H² set map.
- `GRWTSK/.../CentralCommutatorNTorsion.lean`
  and `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiThetaCommutatorRootsOfUnity.lean`:
  group and genuine elliptic theta
  n-th-root-of-unity bridge.
- `documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiThetaOriginalWeilSignReturn.lean`:
  exactly typed source `algebraMap_weilPairing`
  consumer with separate positive and
  inverse rational-function hypotheses.

All are SOURCE_PROOF_CANDIDATES; compilation
and fresh independent kernel/axiom checks
remain NOT_RUN in the two original
Lean toolchains. No imported root pin has
been changed and no research axiom was
added to assert H¹ independence, equality
of pairings, or BSD.

## 7. Remaining distinct genuine arithmetic obligations

1. Compile/replay the actual H¹-to-H² source
   adapter with pinned Tau Ceti v4.36.0-rc1;
   repair ALL typeclass/elaboration issues,
   audit `H1pi_eq_iff`, original `d0`,
   sign of the central coboundary and
   continuous theta unit action. This is
   necessary before any claim of formal
   representative independence.
2. Prove `C(S,T)=tau_S(g_T)/g_T` or the
   properly oriented inverse as a **new
   original elliptic divisor/isogeny
   function-field theorem**, with actual
   `[n]^*` and Weil reciprocity.
   The source consumer does not prove
   this geometric identity for free.
3. Show the TRUE period-index theta
   H² class has the n-torsion (or
   exactly justified even-n correction)
   needed for original `H²(mu_n)`
   normalization, then establish the
   actual theta-polarization equation
   against the ORIGINAL finite Weil cup.
4. Prove the original local ABELIAN Tate
   pairing separates `H¹(F,E)[n]`
   against `E^vee(F)/nE^vee(F)`,
   not merely the pinned finite-module
   local Tate perfectness.
5. Keep the full original point-corrected
   Kummer cone's possibly nonzero
   `H²(U_v)=H¹(F,E)` Weil–Châtelet
   residue and its good truncation,
   real p=2 Tate correction, p-power
   tower, restricted product,
   derived Rlim and global Poitou–Tate.
   The theta Brauer H² and the
   full local-point-cone H² are distinct.
6. No proof of BSD-I, BSD-II,
   Sha finiteness, real Néron–Tate
   regulator or COMPLEX Hasse–Weil
   central L-jet is asserted.

**Historical authorship and sources:** Mumford
(1966), *On the Equations Defining Abelian
Varieties I*, DOI 10.1007/BF01389737;
Cremona–Fisher–O'Neil–Simon–Stoll (2005),
*Explicit n-descent on elliptic curves I. Algebra*;
O'Neil (2002), *The Period-Index
Obstruction for Elliptic Curves*,
DOI 10.1006/jnth.2001.2770;
Silverman (2009), *Arithmetic of
Elliptic Curves*, III.8;
Milne, *Arithmetic Duality Theorems*,
Chapter I. These primary mathematics
sources do not constitute source-typed
Lean certificate receipts.
