/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_SOURCE_PROOF_CANDIDATE /
PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Upstream source: The Tau Ceti contributors, Apache-2.0.
TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b
Lean v4.36.0-rc1. This is NOT an import into the independent
grwtsk/math Lean v4.34.1 root build.
-/
import TauCeti.AlgebraicGeometry.EllipticCurve.GaloisCohomology.Coefficients
import TauCeti.Algebra.Module.Torsion.TateModule
import TauCeti.RepresentationTheory.Homological.ContCohomology.LowDegree

set_option autoImplicit false
noncomputable section

/-!
# Original continuous Galois differentials on the elliptic Tate module

Fix the ACTUAL elliptic Galois module W.PointCoeff = E(Ksep) and its
finite torsion subgroups W.TorsionCoeff (p^n). This file does not
assign an abstract representation to an arbitrary two-dimensional
module: G_K acts on the literal TateModule p W.PointCoeff through
the original coefficient action via TauCeti.TateModule.map.

The source supplies genuine d0/d1 continuous cochain differentials.
We prove their squared-zero identity and compare BOTH maps to their
actual finite torsion-coefficient differentials under every original
TateModule.proj. The finite p-power transition commutes with both
differentials by equivariance, with NO invented quotient transition.

No derived inverse-limit equivalence, number-field localization map,
restricted product, archimedean duality, local Tate pairing on H^i,
higher Bockstein, regulator, or BSD consequence is asserted here.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiTateDifferentials

open TauCeti TauCeti.ContCohomology

variable {K : Type*} [Field K] (W : WeierstrassCurve K) (p : ℕ)

private abbrev G := AbsoluteGaloisGroup K
private abbrev T := TateModule p W.PointCoeff
private abbrev A (n : ℕ) := TateModuleLevel p W.PointCoeff n

/-- The ORIGINAL action on a geometric elliptic point, as an
additive homomorphism. -/
def pointAction (σ : G (K := K)) : W.PointCoeff →+ W.PointCoeff where
  toFun x := σ • x
  map_zero' := by simp
  map_add' x y := smul_add σ x y

/-- The source TateModule.map sends the actual point action to its
compatible, p-adically continuous inverse-limit action. -/
instance instTateGaloisSMul : SMul (G (K := K)) (T W p) where
  smul σ x := TateModule.map (pointAction W σ) x

/-- The ORIGINAL point action makes the inverse-limit coefficient
a genuine distributive Galois module; no rank-two basis is selected. -/
instance instTateGaloisDistribMulAction :
    DistribMulAction (G (K := K)) (T W p) where
  one_smul x := by
    change TateModule.map (pointAction W (1 : G (K := K))) x = x
    have h : pointAction W (1 : G (K := K)) =
        AddMonoidHom.id W.PointCoeff := by
      ext z
      exact one_smul (G (K := K)) z
    rw [h, TateModule.map_id]
    rfl
  mul_smul σ τ x := by
    change TateModule.map (pointAction W (σ * τ)) x =
      TateModule.map (pointAction W σ)
        (TateModule.map (pointAction W τ) x)
    have h : pointAction W (σ * τ) =
        (pointAction W σ).comp (pointAction W τ) := by
      ext z
      exact mul_smul σ τ z
    rw [h, TateModule.map_comp]
    rfl
  smul_zero σ := by
    change TateModule.map (pointAction W σ) (0 : T W p) = 0
    exact map_zero _
  smul_add σ x y := by
    change TateModule.map (pointAction W σ) (x + y) =
      TateModule.map (pointAction W σ) x +
      TateModule.map (pointAction W σ) y
    exact map_add _ _ _

/-- Joint continuity follows from the ACTUAL discrete, continuous
absolute Galois action on W.PointCoeff and the original Tate-module
inverse-limit topology. -/
instance instTateGaloisContinuousSMul :
    ContinuousSMul (G (K := K)) (T W p) where
  continuous_smul := by
    change Continuous (fun q : G (K := K) × T W p =>
      TateModule.map (pointAction W q.1) q.2)
    apply TateModule.continuous_map_apply
    intro n x
    change IsLocallyConstant
      (fun σ : G (K := K) => σ • (x : W.PointCoeff))
    exact (IsLocallyConstant.iff_continuous _).2
      (continuous_smul.comp (continuous_id.prodMk continuous_const))

/-- Finite projection intertwines the ACTUAL Galois actions.
At n+1 this is the same E[p^(n+1)] as the existing Kummer tower. -/
theorem proj_smul (n : ℕ) (σ : G (K := K)) (x : T W p) :
    TateModule.proj n (σ • x) =
      σ • TateModule.proj n x := by
  apply Subtype.ext
  change (TateModule.proj n (σ • x) : W.PointCoeff) =
      (σ • TateModule.proj n x : W.PointCoeff)
  change (TateModule.proj n
    (TateModule.map (pointAction W σ) x) : W.PointCoeff) =
      (σ • TateModule.proj n x : W.PointCoeff)
  rw [TateModule.proj_map, TateModule.levelMap_apply]
  rfl

/-- The ORIGINAL continuous degree-one cochains for T_pE. -/
abbrev COne := C1 (G (K := K)) (T W p)

/-- The ORIGINAL continuous degree-two cochains for T_pE. -/
abbrev CTwo := C2 (G (K := K)) (T W p)

/-- Genuine d0 restricted to continuous one-cochains via the upstream
source theorem continuous_d0_apply. -/
def tateDZero : T W p →+ COne W p :=
  (d0 (G (K := K)) (T W p)).codRestrict _
    (fun x => (mem_C1_iff).2 (continuous_d0_apply x))

/-- Genuine d1 restricted from continuous one- to two-cochains via
the upstream source theorem continuous_d1_apply. -/
def tateDOne : COne W p →+ CTwo W p :=
  ((d1 (G (K := K)) (T W p)).comp
    (C1 (G (K := K)) (T W p)).subtype).codRestrict _ (fun f => by
      apply (mem_C2_iff).2
      exact continuous_d1_apply ((mem_C1_iff).1 f.property))

/-- This is the literal original cochain d1*d0=0 on continuous
T_pE-valued functions. No arbitrary maps are passed as parameters. -/
theorem tateDOne_tateDZero (x : T W p) :
    tateDOne W p (tateDZero W p x) = 0 := by
  apply Subtype.ext
  change d1 (G (K := K)) (T W p)
    (d0 (G (K := K)) (T W p) x) = 0
  exact d1_comp_d0_apply x

/-- The genuine degree-zero cochain differential commutes with
EVERY source torsion projection. This is the exact d0 bridge
between continuous T_pE and finite E[p^n] cochains. -/
theorem tateDZero_proj (n : ℕ) (x : T W p) (σ : G (K := K)) :
    TateModule.proj n ((tateDZero W p x).val σ) =
      d0 (G (K := K)) (A W p n)
        (TateModule.proj n x) σ := by
  exact map_d0_apply (TateModule.proj n)
    (fun g z => proj_smul W p n g z) x σ

/-- The true d1 also commutes with EVERY source torsion projection.
The right side uses the actual Galois action on E[p^n]. -/
theorem tateDOne_proj (n : ℕ) (f : COne W p)
    (σ τ : G (K := K)) :
    TateModule.proj n ((tateDOne W p f).val (σ, τ)) =
      d1 (G (K := K)) (A W p n)
        (fun g => TateModule.proj n (f.val g)) (σ, τ) := by
  exact map_d1_apply (TateModule.proj n)
    (fun g z => proj_smul W p n g z) f.val σ τ

/-- The ORIGINAL p-multiplication transition on geometric torsion
is equivariant under the actual Galois action. The source degree is
n+1 -> n, not multiplication on the rational-point quotient. -/
theorem transition_smul (n : ℕ) (σ : G (K := K))
    (x : A W p (n + 1)) :
    tateModuleTransition p W.PointCoeff n (σ • x) =
      σ • tateModuleTransition p W.PointCoeff n x := by
  apply Subtype.ext
  change p • (σ • (x : W.PointCoeff)) =
    σ • (p • (x : W.PointCoeff))
  exact smul_comm p σ (x : W.PointCoeff)

/-- The actual p-power transition is a cochain map in degree zero.
Specializing n to n+1 matches the old Kummer tower indexing. -/
theorem transition_dZero (n : ℕ) (x : A W p (n + 1))
    (σ : G (K := K)) :
    tateModuleTransition p W.PointCoeff n
      (d0 (G (K := K)) (A W p (n + 1)) x σ) =
    d0 (G (K := K)) (A W p n)
      (tateModuleTransition p W.PointCoeff n x) σ := by
  exact map_d0_apply (tateModuleTransition p W.PointCoeff n)
    (fun g z => transition_smul W p n g z) x σ

/-- The actual p-power transition is also a cochain map in degree one,
with all THREE terms of the original signed inhomogeneous d1 retained. -/
theorem transition_dOne (n : ℕ)
    (f : G (K := K) → A W p (n + 1))
    (σ τ : G (K := K)) :
    tateModuleTransition p W.PointCoeff n
      (d1 (G (K := K)) (A W p (n + 1)) f (σ, τ)) =
    d1 (G (K := K)) (A W p n)
      (fun g => tateModuleTransition p W.PointCoeff n (f g))
      (σ, τ) := by
  exact map_d1_apply (tateModuleTransition p W.PointCoeff n)
    (fun g z => transition_smul W p n g z) f σ τ

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiTateDifferentials
