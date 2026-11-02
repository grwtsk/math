/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original mathematics and code: The Tau Ceti contributors,
Apache-2.0, TauCetiProject/TauCeti
@ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Lean v4.36.0-rc1, isolated from grwtsk/math v4.34.1.
-/
import TauCetiThetaBrauerH2Transport
import TauCetiThetaFiniteOrbitTopology

set_option autoImplicit false
noncomputable section

/-!
# Exact finite selected-lift continuity -> ORIGINAL theta Brauer H²

Pinned Tau Ceti already proves
* W.TorsionCoeff n is a genuine finite Galois module E[n](Fsep),
* its action is continuous for the DISCRETE coefficient topology,
* the original rational-function theta factor is exactly
      scalarLift(c(sigma,tau)) =
          s(a(sigma)) * sigma(s(a(tau))) * s(a(sigma*tau))^-1,
* the central scalar factor satisfies the 2-cocycle law,
* UnitsCoeff F is a DISCRETE continuous Galois module,
* H²(G_F,UnitsCoeff F) is the actual Brauer cohomology.

This file DERIVES continuity of the REAL theta scalar
2-cochain from orbit continuity of ONLY the selected
geometric theta lifts s(t), one for each genuine
torsion coefficient t in E[n]. There are n² such
coefficients for n invertible in F.

Unlike the earlier theta-Brauer adapter, neither
continuity of the scalar factor itself, nor global
continuity of the infinite theta group action,
nor the cocycle law is inserted as an extra premise.

The remaining source arithmetic supplier is now
the specific assertion that each chosen actual
elliptic rational function s(t).function has an
open Galois stabilizer (finite algebraic descent).
That follows classically because each function is
a rational expression in finitely many algebraic
coefficients. Its precise proof using original
Tau Ceti Weierstrass function-field basis and
polynomial numerator/denominator is still OPEN in Lean.

No unconditional Brauer theta class, original Weil
commutator, local abelian Tate separation, or
BSD theorem is claimed.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaSelectedLiftContinuity

open TauCeti TauCeti.ContCohomology
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisGroupAction
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisScalarFactor
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaBrauerH2Transport
open GRWTSK.ArithmeticGeometry.EllipticCurves.IsolatedThetaFiniteOrbitTopology

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve F) [W.IsElliptic]
  (n : ℕ) [NeZero n]

private abbrev G := AbsoluteGaloisGroup F
private abbrev K := SeparableClosure F
private abbrev EW := (W⁄(SeparableClosure F)).toAffine

/-! Only the SOURCE theta lift and its coefficients receive
the discrete topology. This does NOT change the imported
topology of F or assert that F is a discrete local field. -/
local instance : TopologicalSpace (ThetaLift (EW W) n) := ⊥
local instance : DiscreteTopology (ThetaLift (EW W) n) := ⟨rfl⟩

/-- The ONLY new arithmetic orbit-continuity requirement:
for each ACTUAL E[n] coefficient, the ORIGINAL
rational-function theta lift has a continuous
absolute-Galois orbit. No global theta-group
topological action is required. -/
def SelectedThetaLiftOrbitsContinuous : Prop :=
  ∀ t : W.TorsionCoeff n,
    Continuous (fun σ : G (F := F) =>
      thetaLiftGalois W n σ (geometricLift W n t))

/-- The last concrete finite-descent datum on ORIGINAL
elliptic rational functions, rather than on theta
obstruction classes: each selected authentic theta
function `s(t).function` has a continuous Galois orbit
in the discrete function-field-units topology.
The set of t is the ORIGINAL finite E[n] module. -/
def SelectedThetaFunctionOrbitsContinuous : Prop :=
  ∀ t : W.TorsionCoeff n,
    letI : TopologicalSpace (EW W).FunctionFieldˣ := ⊥
    Continuous (fun σ : G (F := F) =>
      Units.map
        (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
        (geometricLift W n t).function)

/-- Source pinned `W.PointCoeff.instContinuousSMul`
already proves continuity of the POINT coordinate.
Consequently, continuity of the selected real
RATIONAL FUNCTION coordinates alone proves
continuity of all selected theta lift orbits.

The proof uses a faithful coordinate embedding of
the actual geometric theta group into the original
point coefficients and the real function field.
No substitute Heisenberg group appears. -/
theorem selectedThetaLiftOrbits_of_functionOrbits
    (hfunctions : SelectedThetaFunctionOrbitsContinuous W n) :
    SelectedThetaLiftOrbitsContinuous W n := by
  intro t
  letI : TopologicalSpace (EW W).FunctionFieldˣ := ⊥
  haveI : DiscreteTopology (EW W).FunctionFieldˣ := ⟨rfl⟩
  let embed : ThetaLift (EW W) n →
      W.PointCoeff × (EW W).FunctionFieldˣ :=
    fun x => (W.pointCoeffEquiv x.point, x.function)
  have hembed : Function.Injective embed := by
    intro x y hxy
    apply ThetaLift.ext (EW W) n
    · apply W.pointCoeffEquiv.injective
      exact congrArg Prod.fst hxy
    · exact congrArg Prod.snd hxy
  have hp : Continuous (fun σ : G (F := F) =>
      W.pointCoeffEquiv
        ((thetaLiftGalois W n σ (geometricLift W n t)).point)) := by
    have hsource : Continuous (fun σ : G (F := F) =>
        σ • (t : W.PointCoeff)) := by fun_prop
    convert hsource using 1
    funext σ
    change W.pointCoeffEquiv
        (Multiplicative.toAdd (W.pointGaloisAction σ)
          (geometricPoint W n t)) = σ • (t : W.PointCoeff)
    rw [← geometricPoint_smul W n σ t]
    simpa only [geometricPoint, AddEquiv.apply_symm_apply] using
      (W.coe_smul_torsionCoeff σ t)
  have hf : Continuous (fun σ : G (F := F) =>
      (thetaLiftGalois W n σ
        (geometricLift W n t)).function) := by
    change Continuous (fun σ : G (F := F) =>
      Units.map
        (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
        (geometricLift W n t).function)
    exact hfunctions t
  have hpair : Continuous (fun σ : G (F := F) =>
      embed (thetaLiftGalois W n σ (geometricLift W n t))) :=
    hp.prodMk hf
  exact continuous_of_injective_discrete_comp embed hembed
    (fun σ : G (F := F) =>
      thetaLiftGalois W n σ (geometricLift W n t)) hpair

/-- The genuine original raw theta scalar is continuous
in the real `(Fsep)ˣ` discrete topology. This uses
only the selected genuine torsion theta lift orbits,
the ORIGINAL continuous E[n] cochain, source group
boundary equality, and faithful scalar inclusion. -/
theorem originalThetaScalar_continuous_of_selectedLiftOrbits
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hselected : SelectedThetaLiftOrbitsContinuous W n) :
    Continuous (originalThetaUnitsCochain W n a) := by
  letI : TopologicalSpace ((K (F := F))ˣ) := ⊥
  haveI : DiscreteTopology ((K (F := F))ˣ) := ⟨rfl⟩
  have ha : Continuous (fun σ : G (F := F) => (a σ : W.TorsionCoeff n)) :=
    ((mem_Z1_iff).mp a.property).1
  have horbit : ∀ t : W.TorsionCoeff n,
      Continuous (fun σ : G (F := F) =>
        σ • geometricLift W n t) := by
    intro t
    change Continuous (fun σ : G (F := F) =>
      thetaLiftGalois W n σ (geometricLift W n t))
    exact hselected t
  have hf : Continuous (fun p : G (F := F) × G (F := F) =>
      thetaObstructionScalar W n a p.1 p.2) := by
    apply continuous_scalar_boundary_of_selected_orbits
      (a := fun σ : G (F := F) => (a σ : W.TorsionCoeff n))
      ha (geometricLift W n) horbit
      (scalarLiftHom (EW W) n)
      (scalarLiftHom_injective (EW W) n)
      (fun σ τ => thetaObstructionScalar W n a σ τ)
    intro σ τ
    exact
      (scalarLift_originalThetaObstruction_eq_groupBoundary
        W n a σ τ)
  exact (continuous_of_discreteTopology :
    Continuous (fun x : ((K (F := F))ˣ) => Additive.ofMul x)).comp hf

/-- The previous separate theta scalar-continuity arithmetic
premise is DERIVED from precisely the selected finite
elliptic theta lift orbit supplier. -/
theorem originalThetaScalarContinuous_of_selectedLiftOrbits
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hselected : SelectedThetaLiftOrbitsContinuous W n) :
    ThetaScalarContinuous W n a :=
  originalThetaScalar_continuous_of_selectedLiftOrbits W n a hselected

/-- The genuine theta scalar continuity follows solely
from the selected ORIGINAL elliptic rational function
orbit continuity. Original point-coefficient
smoothness is already a theorem in pinned Tau Ceti. -/
theorem originalThetaScalar_continuous_of_functionOrbits
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hfunctions : SelectedThetaFunctionOrbitsContinuous W n) :
    ThetaScalarContinuous W n a :=
  originalThetaScalarContinuous_of_selectedLiftOrbits W n a
    (selectedThetaLiftOrbits_of_functionOrbits W n hfunctions)

/-- REAL original canonical Brauer H² is constructed from
the geometric theta scalar under only the smaller
original selected-lift orbit continuity premise.
The source multiplicative cocycle law is already
PROVED in the prior theta Galois scalar module. -/
noncomputable def originalThetaBrauerH2_of_selectedLiftOrbits
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hselected : SelectedThetaLiftOrbitsContinuous W n) :
    continuousCohomology 2
      (ofDiscreteModule ℤ (G (F := F)) (UnitsCoeff F)) :=
  originalThetaBrauerH2_of_continuous W n a
    (originalThetaScalarContinuous_of_selectedLiftOrbits
      W n a hselected)

/-! ## Return to the ORIGINAL local Brauer invariant

The actual source normalized `h2MuEquivZMod`, not an
independently chosen residue character, is now available
conditional on the selected elliptic rational-function
orbits and n-torsion of the genuine Brauer class.
-/

section NormalizedLocal

variable [CharZero F] [ValuativeRel F] [TopologicalSpace F]
  [IsNonarchimedeanLocalField F]

/-- The ORIGINAL normalized local theta obstruction is
now derived from its selected genuine rational-function
orbit supplier and its exact existing Brauer n-torsion
condition, retaining the original coefficient Galois
action and sign. -/
noncomputable def originalThetaNormalizedInvariant_of_functionOrbits
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hfunctions : SelectedThetaFunctionOrbitsContinuous W n)
    (hn : IsUnit (n : F))
    (htorsion :
      n • originalThetaBrauerH2_of_continuous W n a
        (originalThetaScalar_continuous_of_functionOrbits
          W n a hfunctions) = 0) : ZMod n :=
  originalThetaNormalizedInvariant_of_continuous W n a
    (originalThetaScalar_continuous_of_functionOrbits W n a hfunctions)
    hn htorsion

end NormalizedLocal

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaSelectedLiftContinuity
