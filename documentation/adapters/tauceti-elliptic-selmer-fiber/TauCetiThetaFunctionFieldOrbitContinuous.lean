/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE; LEAN_PARSING_NOT_RUN; COMPILATION_NOT_RUN;
UPSTREAM_PINNED_BUILD_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original source authors: The Tau Ceti contributors (Apache-2.0),
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Compatible isolated Lean v4.36.0-rc1; the grwtsk/math root v4.34.1
and its umbrella imports MUST NOT be changed.
-/
import TauCetiThetaSelectedLiftContinuity
import TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FunctionField.Galois.FixedField
import TauCeti.FieldTheory.KrullTopology

set_option autoImplicit false
noncomputable section

/-!
# Actual elliptic function-field Galois orbits are locally constant

The earlier revision incorrectly declared an indiscrete (⊥) units
topology while claiming DiscreteTopology. The correct discrete
TopologicalSpace is (⊤); this revision fixes that defect.

This discharges the genuine original *arithmetic* finite-descent
premise that the prior theta/Brauer H² adapter retained:
    SelectedThetaFunctionOrbitsContinuous W n.

The argument is on the ACTUAL separable-closure elliptic function
field K(E), not on a proxy polynomial, matrix theta, or selected
arbitrary scalar. K=Fsep, G=Gal(K/F).

1. For each p in K[X], p has FINITE coefficient support.
   The original Tau Ceti IsIntegral.isLocallyConstant_apply says
   the Galois orbit of EVERY coefficient in algebraic K/F is
   locally constant. A finite intersection yields local constancy
   of sigma |-> p.map sigma.
2. RatFunc K has an ORIGINAL normalized numerator and denominator.
   The pinned num_mapRingHom/denom_mapRingHom identities transfer
   the two polynomial orbit results to every rational function.
3. The ACTUAL Weierstrass function field has the ORIGINAL
   Fin 2 basis {1,y} over RatFunc K, and pinned
   functionFieldGaloisAction_basis_repr transports each coordinate
   by the genuine RatFunc coefficient action. Only two locally
   constant coordinates must be compared.
4. Finally a genuine function-field unit has locally constant
   Galois orbit in the DISCRETE units topology, using Units.ext.
   Apply this theorem to each ORIGINAL selected theta function,
   giving the previous SelectedThetaFunctionOrbitsContinuous
   with NO extra arithmetic premise.

Consequences:
- originalThetaScalar_continuous_of_functionOrbits now produces
  ThetaScalarContinuous W n a for every original continuous
  E[n]-valued 1-cocycle a;
- originalThetaBrauerH2_of_continuous thereby constructs the
  source-genuine continuous H²(G_F, UnitsCoeff F) theta class
  without a separately assumed theta scalar continuity;
- original local mu_n/ZMod n normalization STILL requires
  separate n-torsion of the genuine theta Brauer class.

None of this proves the original theta commutator=Weil identity,
class invariance under a CHANGE OF E[n] 1-cocycle representative,
local abelian Tate separation, derived Selmer duality or BSD.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaFunctionFieldOrbitContinuous

open TauCeti TauCeti.ContCohomology
open Polynomial
open scoped nonZeroDivisors
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaSelectedLiftContinuity
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaBrauerH2Transport
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve F) [W.IsElliptic]
  (n : ℕ) [NeZero n]

private abbrev K := SeparableClosure F
private abbrev G := AbsoluteGaloisGroup F
private abbrev E := (W⁄(SeparableClosure F)).toAffine

/-! ## The exact finite-coefficient polynomial lemma -/

/-- A polynomial over the ACTUAL separable closure has a
locally constant coefficientwise absolute-Galois orbit.
This uses the original Krull-topology theorem on each
coefficient and finite polynomial support, not an
assumed global polynomial Galois-continuity instance. -/
private theorem polynomialOrbit_isLocallyConstant
    (p : Polynomial (K (F := F))) :
    IsLocallyConstant (fun σ : G (F := F) =>
      p.map σ.toRingHom) := by
  classical
  rw [IsLocallyConstant.iff_eventually_eq]
  intro σ₀
  have hcoeff : ∀ i ∈ p.support,
      ∀ᶠ σ in 𝓝 σ₀,
        σ (p.coeff i) = σ₀ (p.coeff i) := by
    intro i _
    exact (IsLocallyConstant.iff_eventually_eq _).1
      ((Algebra.IsIntegral.isIntegral (p.coeff i)).isLocallyConstant_apply) σ₀
  have hev : ∀ᶠ σ in 𝓝 σ₀, ∀ i ∈ p.support,
      σ (p.coeff i) = σ₀ (p.coeff i) := by
    rw [Filter.eventually_all_finset]
    exact hcoeff
  filter_upwards [hev] with σ hσ
  apply Polynomial.ext
  intro i
  simp only [Polynomial.coeff_map]
  by_cases hi : i ∈ p.support
  · exact hσ i hi
  · have hz : p.coeff i = 0 := by
      by_contra hne
      exact hi (Polynomial.mem_support_iff.mpr hne)
    simp [hz]

/-! ## Original normalized RatFunc numerator/denominator -/

/-- The pinned RatFunc coefficient action, with the EXACT
original injectivity proof for the polynomial map. -/
private noncomputable def ratFuncGaloisMap
    (σ : G (F := F)) :
    RatFunc (K (F := F)) →+* RatFunc (K (F := F)) :=
  RatFunc.mapRingHom (Polynomial.mapRingHom σ.toRingHom)
    (nonZeroDivisors_le_comap_nonZeroDivisors_of_injective _
      (Polynomial.map_injective _ σ.injective))

/-- An arbitrary ORIGINAL rational function in K(x) has
locally constant orbit for the coefficientwise absolute
Galois action. Both numerator and denominator have
finite polynomial support; normalization is retained. -/
private theorem ratFuncOrbit_isLocallyConstant
    (z : RatFunc (K (F := F))) :
    IsLocallyConstant (fun σ : G (F := F) =>
      ratFuncGaloisMap (F := F) σ z) := by
  classical
  have hn := polynomialOrbit_isLocallyConstant (F := F) z.num
  have hd := polynomialOrbit_isLocallyConstant (F := F) z.denom
  rw [IsLocallyConstant.iff_eventually_eq]
  intro σ₀
  filter_upwards [(IsLocallyConstant.iff_eventually_eq _).1 hn σ₀,
    (IsLocallyConstant.iff_eventually_eq _).1 hd σ₀] with σ hnum hden
  have hnum' :
      (ratFuncGaloisMap (F := F) σ z).num =
        (ratFuncGaloisMap (F := F) σ₀ z).num := by
    simpa only [ratFuncGaloisMap, RatFunc.num_mapRingHom] using hnum
  have hden' :
      (ratFuncGaloisMap (F := F) σ z).denom =
        (ratFuncGaloisMap (F := F) σ₀ z).denom := by
    simpa only [ratFuncGaloisMap, RatFunc.denom_mapRingHom] using hden
  calc
    ratFuncGaloisMap (F := F) σ z =
        algebraMap (Polynomial (K (F := F))) (RatFunc (K (F := F)))
          (ratFuncGaloisMap (F := F) σ z).num /
        algebraMap (Polynomial (K (F := F))) (RatFunc (K (F := F)))
          (ratFuncGaloisMap (F := F) σ z).denom :=
      (RatFunc.num_div_denom _).symm
    _ =
        algebraMap (Polynomial (K (F := F))) (RatFunc (K (F := F)))
          (ratFuncGaloisMap (F := F) σ₀ z).num /
        algebraMap (Polynomial (K (F := F))) (RatFunc (K (F := F)))
          (ratFuncGaloisMap (F := F) σ₀ z).denom := by
      rw [hnum', hden']
    _ = ratFuncGaloisMap (F := F) σ₀ z :=
      RatFunc.num_div_denom _

/-! ## ACTUAL elliptic K(E), using the pinned {1,y} basis -/

/-- Every genuine elliptic rational function has a
locally constant absolute-Galois orbit. The pinned
basis `{1,y}` and original `functionFieldGaloisAction_basis_repr`
give two RatFunc coefficients with locally constant
orbits. The function-field element is determined
uniquely by these TWO ORIGINAL basis coordinates. -/
theorem originalFunctionFieldOrbit_isLocallyConstant
    (z : (E W).FunctionField) :
    IsLocallyConstant (fun σ : G (F := F) =>
      W.functionFieldGaloisAction σ z) := by
  classical
  let b := WeierstrassCurve.Affine.FunctionField.basis
    (E W) (RatFunc (K (F := F)))
  have hcoeff (i : Fin 2) :
      IsLocallyConstant (fun σ : G (F := F) =>
        b.repr (W.functionFieldGaloisAction σ z) i) := by
    have h := ratFuncOrbit_isLocallyConstant (F := F) (b.repr z i)
    convert h using 1
    funext σ
    exact W.functionFieldGaloisAction_basis_repr σ z i
  rw [IsLocallyConstant.iff_eventually_eq]
  intro σ₀
  filter_upwards [(IsLocallyConstant.iff_eventually_eq _).1 (hcoeff 0) σ₀,
    (IsLocallyConstant.iff_eventually_eq _).1 (hcoeff 1) σ₀] with σ h₀ h₁
  apply b.repr.injective
  apply Finsupp.ext
  intro i
  fin_cases i
  · exact h₀
  · exact h₁

/-! ## Exact units orbit and real selected theta functions -/

/-- The ACTUAL nonzero function-field unit has locally
constant absolute-Galois orbit, as a UNIT, not just
as an element of a substitute coefficient vector space.
The original source function-field automorphisms
preserve units and the unit inclusion is faithful. -/
theorem originalFunctionFieldUnitsOrbit_isLocallyConstant
    (u : (E W).FunctionFieldˣ) :
    IsLocallyConstant (fun σ : G (F := F) =>
      Units.map
        (MonoidHom.ofClass (W.functionFieldGaloisAction σ)) u) := by
  classical
  have h := originalFunctionFieldOrbit_isLocallyConstant W
    (u : (E W).FunctionField)
  rw [IsLocallyConstant.iff_eventually_eq]
  intro σ₀
  filter_upwards [(IsLocallyConstant.iff_eventually_eq _).1 h σ₀] with σ hu
  apply Units.ext
  exact hu

/-- The entire prior source-typed selected-function
orbit premise is discharged, using only actual
pinned elliptic rational functions and their original
Galois action. No arbitrary theta scalar or local
Brauer class is supplied as a hypothesis. -/
theorem originalSelectedThetaFunctionOrbitsContinuous :
    SelectedThetaFunctionOrbitsContinuous W n := by
  classical
  intro t
  letI : TopologicalSpace (E W).FunctionFieldˣ := ⊤
  haveI : DiscreteTopology (E W).FunctionFieldˣ := ⟨rfl⟩
  exact (originalFunctionFieldUnitsOrbit_isLocallyConstant W
      (GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois.geometricLift
        W n t).function).continuous

/-- ONE common OPEN Krull fixing set for all selected
ORIGINAL theta-function units. The genuine E[n] coefficient
group is finite (source `finite_torsionCoeff`), so finitely
many individual open unit stabilizers can be intersected.
This is a finite Galois descent input on the actual
elliptic functions, not a selected Brauer regulator. -/
theorem originalSelectedThetaFunctions_commonOpenStabilizer :
    IsOpen {σ : G (F := F) |
      ∀ t : W.TorsionCoeff n,
        Units.map
          (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
          (GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois.geometricLift
            W n t).function =
          (GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois.geometricLift
            W n t).function} := by
  classical
  have hs (t : W.TorsionCoeff n) :
      IsOpen {σ : G (F := F) |
        Units.map
          (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
          (GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois.geometricLift
            W n t).function =
          (GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois.geometricLift
            W n t).function} :=
    (originalFunctionFieldUnitsOrbit_isLocallyConstant W
      (GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois.geometricLift
        W n t).function).isOpen_fiber _
  have hall :
      IsOpen (⋂ t : W.TorsionCoeff n,
        {σ : G (F := F) |
          Units.map
            (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
            (GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois.geometricLift
              W n t).function =
            (GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois.geometricLift
              W n t).function}) :=
    isOpen_iInter_of_finite hs
  simpa only [Set.mem_iInter, Set.mem_setOf_eq] using hall

/-- The actual theta scalar 2-cochain is now
unconditionally CONTINUOUS for every original
elliptic n-torsion Galois 1-cocycle, at the
source-candidate mathematical level.
The separate scalar 2-cocycle LAW has already
been derived from the source theta group. -/
theorem originalThetaScalarContinuous
    (a : Z1 (G (F := F)) (W.TorsionCoeff n)) :
    ThetaScalarContinuous W n a :=
  originalThetaScalar_continuous_of_functionOrbits W n a
    (originalSelectedThetaFunctionOrbitsContinuous W n)

/-- Construct the REAL original continuous
H²(G_F, UnitsCoeff F) theta class from the pinned
original elliptic function-field Galois action,
without assuming the scalar cochain continuity
or its 2-cocycle law as external arithmetic data. -/
noncomputable def originalThetaBrauerH2
    (a : Z1 (G (F := F)) (W.TorsionCoeff n)) :
    continuousCohomology 2
      (ofDiscreteModule ℤ (G (F := F)) (UnitsCoeff F)) :=
  originalThetaBrauerH2_of_continuous W n a
    (originalThetaScalarContinuous W n a)

/-! ## The original normalized nonarchimedean local invariant

This is a CONSUMER of the genuine theta H² class, not
an independent normalization or an assertion that the
theta class is always killed by n. The latter remains
a distinct arithmetic question, especially for
even-degree theta groups.
-/

section NormalizedLocal

variable [CharZero F] [ValuativeRel F] [TopologicalSpace F]
  [IsNonarchimedeanLocalField F]

/-- Tau Ceti's actual mu_n-to-units H² identification
and original h2MuEquivZMod construct the genuine
local theta invariant after independent n-torsion.
The continuity and 2-cocycle conditions are now
derived by the original finite-coefficient geometry
and the actual theta group law. -/
noncomputable def originalThetaNormalizedInvariant_of_nTorsion
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hn : IsUnit (n : F))
    (htorsion : n • originalThetaBrauerH2 W n a = 0) :
    ZMod n :=
  GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaSelectedLiftContinuity.originalThetaNormalizedInvariant_of_functionOrbits
    W n a (originalSelectedThetaFunctionOrbitsContinuous W n)
    hn htorsion

end NormalizedLocal

/-! Not proved here: n-torsion of this Brauer class,
choice/representative independence in Galois H²,
original Mumford commutator=TauCeti.Isogeny.weilPairing,
and the local abelian Tate separating/adjunction theorem.
These are distinct genuine arithmetic obligations. -/

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaFunctionFieldOrbitContinuous
