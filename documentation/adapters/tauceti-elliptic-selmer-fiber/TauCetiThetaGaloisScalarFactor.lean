/- Copyright (c) 2026 grwtsk contributors. MIT.
ORIGINAL_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original Tau Ceti authors/contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
This must be compiled in the isolated Tau Ceti Lean v4.36.0-rc1
toolchain, not grwtsk/math native Lean v4.34.1.
-/
import TauCetiThetaGaloisGroupAction
import TauCeti.GroupTheory.GroupExtension.FactorSetOfSection
import TauCeti.RepresentationTheory.Homological.ContCohomology.LowDegree

set_option autoImplicit false
noncomputable section

/-!
# The original theta raw scalar IS its genuine Galois group boundary

The previous raw `thetaObstructionScalar` was extracted from
a quotient of REAL elliptic rational functions with zero divisor.
The source now proves that its actual scalar theta lift equals
the nonabelian connecting factor of the actual Galois theta group:

  scalarLift(c(σ,τ)) =
     lift(aσ) * (σ • lift(aτ)) * lift(a(στ))^-1.

The proof uses the genuine theta group `Group` instance,
the ORIGINAL elliptic torsion point quotient, the true
function-field ratio lemma and the injective constant-field
algebra map. It does not define c to fit a desired cocycle.
No abstract replacement coefficient module, chosen perfect
pairing, or assumed Brauer H² theorem is used.

From this source identity and the genuine Galois group action,
the multiplicative 2-cocycle law follows by central group
algebra. This discharges the missing ALGEBRAIC factor-law
input of TauCetiThetaBrauerH2Transport, but DOES NOT yet
prove the raw theta scalar CONTINUOUS or the full class
independent of arbitrary Galois one-cocycle representatives.
Those must be provided separately before Brauer H².
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisScalarFactor

open TauCeti TauCeti.ContCohomology
open WeierstrassCurve WeierstrassCurve.Affine
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisGroupAction

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve F) [W.IsElliptic] (n : ℕ) [NeZero n]

private abbrev K := SeparableClosure F
private abbrev E := (W⁄(SeparableClosure F)).toAffine
private abbrev G := AbsoluteGaloisGroup F

/-- Exact equality of the source original theta-product point
and the source original E[n] cocycle's `σ τ` point.
It is the TRUE Weil coefficient cocycle, not a coordinate proxy. -/
theorem obstructionProduct_point_eq
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ : G (F := F)) :
    (obstructionProduct W n a σ τ).point =
      (geometricLift W n (a (σ * τ))).point := by
  have ha := (mem_Z1_iff.1 a.property).2 σ τ
  change geometricPoint W n (a σ) +
    Multiplicative.toAdd (W.pointGaloisAction σ)
      (geometricPoint W n (a τ)) =
    geometricPoint W n (a (σ * τ))
  rw [← geometricPoint_smul W n σ (a τ)]
  simp only [geometricPoint, ← map_add]
  congr 1
  exact ha.symm

/-- The group boundary with original genuine theta lifts
over E[n](Fsep) is literally the original rational-function
quotient used by the previous raw scalar definition.
No arbitrary factor set is chosen as a hypothesis. -/
theorem scalarLift_originalThetaObstruction_eq_groupBoundary
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ : G (F := F)) :
    scalarLift (E W) n (thetaObstructionScalar W n a σ τ) =
      geometricLift W n (a σ) *
        (σ • geometricLift W n (a τ)) *
          (geometricLift W n (a (σ * τ)))⁻¹ := by
  let x := obstructionProduct W n a σ τ
  let y := geometricLift W n (a (σ * τ))
  have hxy : x.point = y.point :=
    obstructionProduct_point_eq W n a σ τ
  have hf : (x * y⁻¹).function = x.function / y.function :=
    ThetaLift.mul_inv_function_of_point_eq (E W) n x y hxy
  have hs : Units.map (algebraMap (K (F := F)) (E W).FunctionField)
      (thetaObstructionScalar W n a σ τ) =
        x.function / y.function := by
    apply Units.ext
    exact (thetaObstructionScalar_spec W n a σ τ).symm
  change scalarLift (E W) n (thetaObstructionScalar W n a σ τ) =
    x * y⁻¹
  apply ThetaLift.ext (E W) n
  · change (0 : (E W).Point) = x.point - y.point
    rw [hxy]
    abel
  · change Units.map (algebraMap (K (F := F)) (E W).FunctionField)
        (thetaObstructionScalar W n a σ τ) =
      (x * y⁻¹).function
    rw [hf]
    exact hs

/-- A SOURCE-EXACT original Galois scalar factor,
not a separate arbitrary function. -/
noncomputable def originalThetaFactor
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ : G (F := F)) : (K (F := F))ˣ :=
  thetaObstructionScalar W n a σ τ

/-- The actual theta scalar source uniquely records
the group boundary; no further choice of scalar is possible. -/
theorem originalThetaFactor_unique_of_groupBoundary
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ : G (F := F))
    (c : (K (F := F))ˣ)
    (hc : scalarLift (E W) n c =
      geometricLift W n (a σ) *
        (σ • geometricLift W n (a τ)) *
          (geometricLift W n (a (σ * τ)))⁻¹) :
    c = originalThetaFactor W n a σ τ := by
  apply scalarLiftHom_injective (E W) n
  exact hc.trans
    (scalarLift_originalThetaObstruction_eq_groupBoundary
      W n a σ τ).symm

/-! The following is the same associative group calculation
as Tau Ceti's original `GroupExtension.Section.factorSetFun_mul`,
now at the *Galois-twisted* theta lift rather than the
internal point-group factor set. Reusing the actual theta
Galois group action and scalar centrality is essential. -/

/-- Only the centrality commutation is needed to
derive the source exact nonabelian group-word identity. -/
private theorem centralBoundaryWord
    {Θ : Type*} [Group Θ]
    (A B C D E F : Θ)
    (hcentral : (B * C * E⁻¹) * A = A * (B * C * E⁻¹)) :
    (A * B * D⁻¹) * (D * C * F⁻¹) =
      (B * C * E⁻¹) * (A * E * F⁻¹) := by
  calc
    (A * B * D⁻¹) * (D * C * F⁻¹) =
      A * B * C * F⁻¹ := by group
    _ = (B * C * E⁻¹) * (A * E * F⁻¹) := by
      rw [hcentral]
      group

/-- Exact algebraic boundary identity with CENTRAL scalar
factor and the original Galois action on the real theta
group. This is the same group algebra as the independently
authored root module, now instantiated on the original
source Galois theta action. -/
private theorem thetaBoundary_twoCocycle
    {G₀ Θ : Type*} [Group G₀] [Group Θ]
    [MulDistribMulAction G₀ Θ]
    (u : G₀ → Θ) (σ τ ρ : G₀)
    (hc : Commute
      (σ • (u τ * (τ • u ρ) * (u (τ * ρ))⁻¹)) (u σ)) :
    (u σ * (σ • u τ) * (u (σ * τ))⁻¹) *
      (u (σ * τ) * ((σ * τ) • u ρ) *
        (u (σ * (τ * ρ)))⁻¹) =
    (σ • (u τ * (τ • u ρ) * (u (τ * ρ))⁻¹)) *
      (u σ * (σ • u (τ * ρ)) *
        (u (σ * (τ * ρ)))⁻¹) := by
  let A : Θ := u σ
  let B : Θ := σ • u τ
  let C : Θ := (σ * τ) • u ρ
  let D : Θ := u (σ * τ)
  let E : Θ := σ • u (τ * ρ)
  let F : Θ := u (σ * (τ * ρ))
  have hsmul : σ • (u τ * (τ • u ρ) * (u (τ * ρ))⁻¹) =
      B * C * E⁻¹ := by
    simp [B, C, E, smul_mul', smul_inv', mul_smul]
  have hc' : (B * C * E⁻¹) * A = A * (B * C * E⁻¹) := by
    rw [← hsmul]
    exact hc.eq
  have hword := centralBoundaryWord A B C D E F hc'
  simpa only [A, B, C, D, E, F, hsmul, smul_mul',
    smul_inv', mul_smul, mul_assoc] using hword

/-- The REAL original elliptic theta scalar satisfies the
FULL multiplicative 2-cocycle identity with the ORIGINAL
absolute-Galois action. This is derived by centrality of
the actual rational-function scalar kernel and the
previous source group-boundary identification. No
`ThetaScalarFactorLaw` proposition is assumed. -/
theorem originalThetaFactor_twoCocycle
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ ρ : G (F := F)) :
    originalThetaFactor W n a σ τ *
      originalThetaFactor W n a (σ * τ) ρ =
      (σ • originalThetaFactor W n a τ ρ) *
        originalThetaFactor W n a σ (τ * ρ) := by
  let u : G (F := F) → ThetaLift (E W) n :=
    fun g => geometricLift W n (a g)
  have hb (g h : G (F := F)) :
      scalarLift (E W) n (originalThetaFactor W n a g h) =
        u g * (g • u h) * (u (g * h))⁻¹ :=
    scalarLift_originalThetaObstruction_eq_groupBoundary W n a
  have hcentral :
      Commute (σ • (u τ * (τ • u ρ) *
          (u (τ * ρ))⁻¹)) (u σ) := by
    rw [← hb τ ρ, scalarLiftHom_galois W n σ
      (originalThetaFactor W n a τ ρ)]
    exact ⟨scalarLift_central (E W) n
      (σ • originalThetaFactor W n a τ ρ) (u σ)⟩
  have hgroup := thetaBoundary_twoCocycle u σ τ ρ hcentral
  apply scalarLiftHom_injective (E W) n
  rw [map_mul, map_mul]
  simp only [MonoidHom.coe_coe]
  rw [hb σ τ, hb (σ * τ) ρ, hb σ (τ * ρ)]
  rw [← scalarLiftHom_galois W n σ
      (originalThetaFactor W n a τ ρ), hb τ ρ]
  exact hgroup

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisScalarFactor
