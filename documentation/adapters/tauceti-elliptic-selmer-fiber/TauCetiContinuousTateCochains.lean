/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Upstream mathematics and API: The Tau Ceti contributors, Apache-2.0.
TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b
Toolchain leanprover/lean4:v4.36.0-rc1.
NOT an import into grwtsk/math Lean v4.34.1.
-/
import TauCeti.AlgebraicGeometry.EllipticCurve.GaloisCohomology.Coefficients
import TauCeti.Algebra.Module.Torsion.TateModule
import TauCeti.RepresentationTheory.Homological.ContCohomology.LowDegree
import Mathlib.Topology.ContinuousMap.Basic

set_option autoImplicit false
noncomputable section

/-!
# Continuous cochain carriers of the ORIGINAL elliptic Tate module

The source coefficient is literally TateModule p W.PointCoeff, where
W.PointCoeff = E(Ksep) with its original continuous G_K action.
Each TateModuleLevel p W.PointCoeff n is E[p^n](Ksep).
The upstream topology on TateModule is induced from ALL projections.

For any topological space X we construct the actual equivalence
  C(X, T_p E) ~= {locally constant finite cochains f_n on X,
                    p f_(n+1) = f_n}.
This works for X = G_K and X = G_K x G_K, hence degrees 1 and 2,
and degree 0 is T_p E itself. The proof uses upstream
TateModule.continuous_iff, mk, proj, proj_succ verbatim.

We also construct the ORIGINAL absolute Galois action by transporting
the source action on W.PointCoeff through TateModule.map, and identify
its finite coordinates. This is not a chosen rank-two model.

This file does NOT yet construct the inhomogeneous differentials on
the Tate module, a derived inverse limit, local completion field
restriction, the finite-S restricted product, archimedean Tate
cohomology, or the local Tate/Poitou-Tate cup-product duality.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiContinuousTateCochains

open TauCeti TauCeti.ContCohomology

universe uX uA

/-- Compatible, continuously varying coordinates in the ACTUAL
TauCeti finite torsion tower. The continuity is expressed as
local constancy, matching TateModule.continuous_iff. -/
structure CompatibleFiniteCochains
    (X : Type uX) [TopologicalSpace X]
    (p : ℕ) (A : Type uA) [AddCommGroup A] where
  component : ∀ n : ℕ, X → TateModuleLevel p A n
  locally_constant : ∀ n, IsLocallyConstant (component n)
  transition : ∀ n x,
    tateModuleTransition p A n (component (n + 1) x) = component n x

variable {X : Type uX} [TopologicalSpace X]
variable (p : ℕ) (A : Type uA) [AddCommGroup A]

/-- Turn the ORIGINAL compatible finite cochains into a continuous
Tate-module-valued map, using the source inverse-limit topology. -/
def CompatibleFiniteCochains.toContinuous
    (c : CompatibleFiniteCochains X p A) : C(X, TateModule p A) where
  toFun x := TateModule.mk (fun n => c.component n x)
    (fun n => c.transition n x)
  continuous_toFun := by
    apply (TateModule.continuous_iff (p := p) (A := A)).2
    intro n
    change IsLocallyConstant (c.component n)
    exact c.locally_constant n

/-- Every genuine continuous Tate-valued cochain supplies all the
locally constant finite coordinates; compatibility is not guessed. -/
def CompatibleFiniteCochains.ofContinuous
    (f : C(X, TateModule p A)) : CompatibleFiniteCochains X p A where
  component n x := TateModule.proj n (f x)
  locally_constant n :=
    (TateModule.continuous_iff (p := p) (A := A)).1 f.continuous n
  transition n x := TateModule.proj_succ (f x) n

/-- SOURCE-CANONICAL inverse-limit continuous-cochain equivalence.
It does not assume lim^1=0; no cohomology or derived equivalence is
inferred from this carrier equivalence. -/
def continuousCochainEquiv :
    CompatibleFiniteCochains X p A ≃ C(X, TateModule p A) where
  toFun := CompatibleFiniteCochains.toContinuous p A
  invFun := CompatibleFiniteCochains.ofContinuous p A
  left_inv := by
    intro c
    cases c
    rfl
  right_inv := by
    intro f
    apply ContinuousMap.ext
    intro x
    apply TateModule.ext
    intro n
    rfl

/-- The same source finite component is recovered, with NO
normalization or index changes. -/
theorem toContinuous_proj
    (c : CompatibleFiniteCochains X p A) (n : ℕ) (x : X) :
    TateModule.proj n (CompatibleFiniteCochains.toContinuous p A c x) = c.component n x := by
  rfl

/-- A continuous restriction/pullback preserves every finite
coordinate. The actual map G_(K_v) -> G_Q still must be supplied
from the original separable-closure embeddings and coefficient
base change, rather than set equal to the identity. -/
def pullback {G H : Type*} [Monoid G] [Monoid H]
    [TopologicalSpace G] [TopologicalSpace H]
    (φ : H →ₜ* G) (f : C(G, TateModule p A)) :
    C(H, TateModule p A) where
  toFun h := f (φ h)
  continuous_toFun := f.continuous.comp φ.continuous

theorem pullback_proj {G H : Type*} [Monoid G] [Monoid H]
    [TopologicalSpace G] [TopologicalSpace H]
    (φ : H →ₜ* G) (f : C(G, TateModule p A))
    (n : ℕ) (h : H) :
    TateModule.proj n (pullback p A φ f h) =
      TateModule.proj n (f (φ h)) := rfl

/-! The coefficient is now fixed to the REAL elliptic object in TauCeti. -/

variable {K : Type*} [Field K] (W : WeierstrassCurve K)

/-- The genuine geometric Tate-module coefficient:
not the Tate module of rational E(K)-points. -/
abbrev EllipticTate := TateModule p W.PointCoeff

/-- The actual finite torsion coefficient at a shifted n+1 level
of the existing grwtsk finite-point Kummer tower. -/
abbrev EllipticTorsionLevel (n : ℕ) :=
  W.TorsionCoeff (p ^ (n + 1))

/-- Genuine degree-one continuous Galois cochains. -/
abbrev GlobalTateCOne :=
  C1 (AbsoluteGaloisGroup K) (EllipticTate p W)

/-- Genuine degree-two continuous Galois cochains. -/
abbrev GlobalTateCTwo :=
  C2 (AbsoluteGaloisGroup K) (EllipticTate p W)

/-- Continuity of the ACTUAL degree-one Galois cochain is equivalent
to local constancy at all original geometric torsion levels. -/
theorem mem_globalTateCOne_iff (f : AbsoluteGaloisGroup K → EllipticTate p W) :
    f ∈ GlobalTateCOne p W ↔
      ∀ n, IsLocallyConstant (fun σ => TateModule.proj n (f σ)) := by
  rw [mem_C1_iff]
  exact TateModule.continuous_iff

/-- The same exact equivalence holds for the true degree-two
continuous Galois cochain carrier. -/
theorem mem_globalTateCTwo_iff
    (f : (AbsoluteGaloisGroup K × AbsoluteGaloisGroup K) → EllipticTate p W) :
    f ∈ GlobalTateCTwo p W ↔
      ∀ n, IsLocallyConstant (fun q => TateModule.proj n (f q)) := by
  rw [mem_C2_iff]
  exact TateModule.continuous_iff

/-- Transport the ACTUAL source Galois action on E(Ksep) to an
additive endomorphism. -/
def pointGaloisEnd (σ : AbsoluteGaloisGroup K) :
    W.PointCoeff →+ W.PointCoeff where
  toFun x := σ • x
  map_zero' := by simp
  map_add' x y := smul_add σ x y

/-- Action on the source Tate module, obtained by the original
TateModule.map, not an arbitrary matrix representation. -/
def tateGaloisEnd (σ : AbsoluteGaloisGroup K) :
    EllipticTate p W →+ EllipticTate p W :=
  TateModule.map (pointGaloisEnd W σ)

/-- Every ORIGINAL E[p^n] projection of the Tate-module Galois
action is the genuine torsion point action, at the exact same n. -/
theorem tateGaloisEnd_proj (σ : AbsoluteGaloisGroup K)
    (x : EllipticTate p W) (n : ℕ) :
    ((TateModule.proj n (tateGaloisEnd p W σ x) :
        TateModuleLevel p W.PointCoeff n) : W.PointCoeff) =
      σ • (TateModule.proj n x : W.PointCoeff) := by
  rw [tateGaloisEnd, TateModule.proj_map, TateModule.levelMap_apply]
  rfl

/-- Joint continuity of the ACTUAL Galois action on T_pE follows
from local constancy of the source action on each finite torsion point
and TauCeti.TateModule.continuous_map_apply. -/
theorem continuous_tateGaloisEnd :
    Continuous (fun q : AbsoluteGaloisGroup K × EllipticTate p W =>
      tateGaloisEnd p W q.1 q.2) := by
  have hlocal : ∀ n (x : TateModuleLevel p W.PointCoeff n),
      IsLocallyConstant
        (fun σ : AbsoluteGaloisGroup K => pointGaloisEnd W σ x) := by
    intro n x
    change IsLocallyConstant
      (fun σ : AbsoluteGaloisGroup K => σ • (x : W.PointCoeff))
    exact (IsLocallyConstant.iff_continuous _).2
      (continuous_smul.comp (continuous_id.prodMk continuous_const))
  exact TateModule.continuous_map_apply hlocal

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiContinuousTateCochains
