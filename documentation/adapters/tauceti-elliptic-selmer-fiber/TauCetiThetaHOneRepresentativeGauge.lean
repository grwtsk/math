/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
The original Tau Ceti contributors, Apache-2.0, pinned
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Compatible Tau Ceti Lean v4.36.0-rc1 ONLY, not root math v4.34.1.
-/
import TauCetiThetaFunctionFieldOrbitContinuous
import TauCetiThetaGaloisScalarFactor
import TauCeti.RepresentationTheory.Homological.ContCohomology.LowDegree


set_option autoImplicit false
noncomputable section

/-!
# Original H¹ cocycle representatives: actual theta gauge and scalar correction

For genuine original a,b in Z¹(G_F,E[n]) with the SAME H¹
class, the PINNED Tau Ceti H1pi_eq_iff says there is an
ACTUAL 0-cochain t∈E[n] satisfying

    bσ = aσ + σt - t.

Choose v = geometricLift(t), and write s(aσ),s(bσ) for
the ORIGINAL rational-function theta lifts. Then

    gσ = v⁻¹ s(aσ) σ(v)

has underlying elliptic point bσ. The previously proved
source scalar-torsor theorem supplies the UNIQUE
kσ ∈ (Fsep)× with

    gσ = scalarLift(kσ) · s(bσ).

Because the original theta scalar boundary is central,

    b_g(σ,τ) = b_a(σ,τ).

The above equation gives the exact normalized 2-coboundary

    c_a(σ,τ) = kσ σ(kτ) kστ⁻¹ c_b(σ,τ).

This file makes the H¹ representative change and the
source kσ precise. Continuity of kσ is not arbitrary:
it follows from the ALREADY PUBLISHED function-field
finite Galois orbit theorem for the selected s(t), the
fixed lift v=s(t), and the faithful original scalar
inclusion, without changing the Krull topology.

This is NOT a new theta/Weil-pairing identification.
The exact function-field commutator comparison with
Tau Ceti's Isogeny.weilPairing remains independent.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaHOneRepresentativeGauge

open TauCeti TauCeti.ContCohomology
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisGroupAction
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisScalarFactor
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaBrauerH2Transport
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaSelectedLiftContinuity
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaFunctionFieldOrbitContinuous
open GRWTSK.ArithmeticGeometry.EllipticCurves.IsolatedThetaFiniteOrbitTopology

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve F) [W.IsElliptic]
  (n : ℕ) [NeZero n]

private abbrev G := AbsoluteGaloisGroup F
private abbrev K := SeparableClosure F
private abbrev EW := (W⁄(SeparableClosure F)).toAffine
private abbrev A := W.TorsionCoeff n
private abbrev Theta := ThetaLift (EW W) n

/-! ## Actual Tau Ceti H¹ representative equality -/

/-- The exact pinned H¹ quotient theorem gives a genuine
E[n]-VALUED 0-cochain, with its original signed d⁰
formula. This is a theorem from source equality of
continuous H¹ classes, not an assumed representative
correspondence or selected gauge element. -/
theorem originalHOne_eq_iff_coboundary
    (a b : Z1 (G (F := F)) (A W n)) :
    (a : H1 (G (F := F)) (A W n)) =
      (b : H1 (G (F := F)) (A W n)) ↔
      ∃ t : A W n, ∀ σ : G (F := F),
        b σ = a σ + σ • t - t := by
  constructor
  · intro heq
    have hB : (b : G (F := F) → A W n) -
        (a : G (F := F) → A W n) ∈
          B1 (G (F := F)) (A W n) :=
      (H1pi_eq_iff).mp heq.symm
    change (b : G (F := F) → A W n) -
        (a : G (F := F) → A W n) ∈
      (d0 (G (F := F)) (A W n)).range at hB
    obtain ⟨t, ht⟩ := hB
    refine ⟨t, ?_⟩
    intro σ
    have hσ := congrArg
      (fun f : G (F := F) → A W n => f σ) ht
    change σ • t - t = b σ - a σ at hσ
    calc
      b σ = (b σ - a σ) + a σ := by abel
      _ = (σ • t - t) + a σ := by rw [← hσ]
      _ = a σ + σ • t - t := by abel
  · rintro ⟨t, ht⟩
    apply (H1pi_eq_iff).mpr
    change (a : G (F := F) → A W n) -
        (b : G (F := F) → A W n) ∈
      (d0 (G (F := F)) (A W n)).range
    refine ⟨-t, ?_⟩
    funext σ
    change σ • (-t) - (-t) = a σ - b σ
    rw [smul_neg, ht σ]
    abel

/-! ## Genuine theta gauge on original E[n] points -/

/-- The exact nonabelian gauge lift of a source 0-cochain. -/
noncomputable def gaugedThetaLift
    (a : Z1 (G (F := F)) (A W n)) (t : A W n)
    (σ : G (F := F)) : Theta W n :=
  (geometricLift W n t)⁻¹ *
    geometricLift W n (a σ) *
      (σ • geometricLift W n t)

/-- Original theta projection of the exact gauge: the same
original signed coboundary that characterizes H¹. -/
theorem gaugedThetaLift_point
    (a : Z1 (G (F := F)) (A W n))
    (t : A W n) (σ : G (F := F)) :
    (gaugedThetaLift W n a t σ).point =
      geometricPoint W n (a σ + σ • t - t) := by
  change
    -geometricPoint W n t + geometricPoint W n (a σ) +
      Multiplicative.toAdd (W.pointGaloisAction σ)
        (geometricPoint W n t) =
      geometricPoint W n (a σ + σ • t - t)
  rw [← geometricPoint_smul W n σ t]
  simp only [geometricPoint, map_add, map_sub, map_neg]
  abel

/-- A gauge of a TRUE source representative has exactly
the projected E[n] point of the target representative. -/
theorem gaugedThetaLift_point_eq
    (a b : Z1 (G (F := F)) (A W n))
    (t : A W n)
    (ht : ∀ σ : G (F := F),
      b σ = a σ + σ • t - t)
    (σ : G (F := F)) :
    (gaugedThetaLift W n a t σ).point =
      (geometricLift W n (b σ)).point := by
  rw [gaugedThetaLift_point, ← ht σ]
  rfl

/-! ## UNIQUE original constant-field correction of selected lifts -/

/-- The scalar kσ is chosen from the genuine original
theta-function FIBRE torsor. Its existence and uniqueness
were already proved from rational function divisors;
there is no free scalar fitting a desired H² class. -/
noncomputable def thetaRepresentativeCorrection
    (a b : Z1 (G (F := F)) (A W n))
    (t : A W n)
    (ht : ∀ σ : G (F := F),
      b σ = a σ + σ • t - t)
    (σ : G (F := F)) : (K (F := F))ˣ :=
  Classical.choose
    ((ThetaLift.existsUnique_scalar_mul_eq_of_point_eq
      (EW W) n (gaugedThetaLift W n a t σ)
      (geometricLift W n (b σ))
      (gaugedThetaLift_point_eq W n a b t ht σ)).exists)

/-- Original selected theta lift of bσ differs from the
actual gauge of aσ by precisely the chosen TRUE scalar. -/
theorem thetaRepresentativeCorrection_spec
    (a b : Z1 (G (F := F)) (A W n))
    (t : A W n)
    (ht : ∀ σ : G (F := F),
      b σ = a σ + σ • t - t)
    (σ : G (F := F)) :
    gaugedThetaLift W n a t σ =
      scalarLift (EW W) n
        (thetaRepresentativeCorrection W n a b t ht σ) *
        geometricLift W n (b σ) :=
  Classical.choose_spec
    ((ThetaLift.existsUnique_scalar_mul_eq_of_point_eq
      (EW W) n (gaugedThetaLift W n a t σ)
      (geometricLift W n (b σ))
      (gaugedThetaLift_point_eq W n a b t ht σ)).exists)

/-! ## Continuity is derived from source-selected function orbits -/

/-- The genuine source scalar 1-cochain kσ is CONTINUOUS
for the ORIGINAL Krull topology. This theorem consumes
the pinned polynomial/RatFunc/{1,y} finite-coefficient
orbit proof; it does not assume continuity of an
arbitrary scalar correction. -/
theorem thetaRepresentativeCorrection_continuous
    (a b : Z1 (G (F := F)) (A W n))
    (t : A W n)
    (ht : ∀ σ : G (F := F),
      b σ = a σ + σ • t - t) :
    Continuous (fun σ : G (F := F) =>
      Additive.ofMul
        (thetaRepresentativeCorrection W n a b t ht σ) :
          UnitsCoeff F) := by
  letI : TopologicalSpace (Theta W n) := ⊤
  haveI : DiscreteTopology (Theta W n) := ⟨rfl⟩
  letI : TopologicalSpace ((K (F := F))ˣ) := ⊤
  haveI : DiscreteTopology ((K (F := F))ˣ) := ⟨rfl⟩
  letI : ContinuousMul (Theta W n) := ⟨continuous_of_discreteTopology⟩
  letI : ContinuousInv (Theta W n) := ⟨continuous_of_discreteTopology⟩
  have ha : Continuous (fun σ : G (F := F) => (a σ : A W n)) :=
    ((mem_Z1_iff).mp a.property).1
  have hb : Continuous (fun σ : G (F := F) => (b σ : A W n)) :=
    ((mem_Z1_iff).mp b.property).1
  have hsa : Continuous (fun σ : G (F := F) =>
      geometricLift W n (a σ)) :=
    (continuous_of_discreteTopology :
      Continuous (geometricLift W n)).comp ha
  have hsb : Continuous (fun σ : G (F := F) =>
      geometricLift W n (b σ)) :=
    (continuous_of_discreteTopology :
      Continuous (geometricLift W n)).comp hb
  have horbit : Continuous (fun σ : G (F := F) =>
      σ • geometricLift W n t) := by
    exact (selectedThetaLiftOrbits_of_functionOrbits W n
      (originalSelectedThetaFunctionOrbitsContinuous W n)) t
  have hgauge : Continuous (fun σ : G (F := F) =>
      gaugedThetaLift W n a t σ) :=
    ((continuous_const.mul hsa).mul horbit)
  have hi : Continuous (fun σ : G (F := F) =>
      scalarLiftHom (EW W) n
        (thetaRepresentativeCorrection W n a b t ht σ)) := by
    have hprod := hgauge.mul hsb.inv
    convert hprod using 1
    funext σ
    have hspec :=
      thetaRepresentativeCorrection_spec W n a b t ht σ
    change gaugedThetaLift W n a t σ =
      scalarLiftHom (EW W) n
        (thetaRepresentativeCorrection W n a b t ht σ) *
          geometricLift W n (b σ) at hspec
    have heq : scalarLiftHom (EW W) n
        (thetaRepresentativeCorrection W n a b t ht σ) =
      gaugedThetaLift W n a t σ *
        (geometricLift W n (b σ))⁻¹ := by
      rw [hspec]
      group
    exact heq
  have hk : Continuous (fun σ : G (F := F) =>
      thetaRepresentativeCorrection W n a b t ht σ) :=
    continuous_of_injective_discrete_comp
      (scalarLiftHom (EW W) n)
      (scalarLiftHom_injective (EW W) n)
      (fun σ : G (F := F) =>
        thetaRepresentativeCorrection W n a b t ht σ) hi
  exact (continuous_of_discreteTopology :
    Continuous (fun x : ((K (F := F))ˣ) => Additive.ofMul x)).comp hk

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaHOneRepresentativeGauge
