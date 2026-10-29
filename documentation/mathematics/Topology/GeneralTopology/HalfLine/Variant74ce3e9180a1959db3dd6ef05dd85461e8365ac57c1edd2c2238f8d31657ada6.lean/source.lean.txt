/-
  spectral-rh/Spectral/Analysis/SmoothCompactSupport/HalfLine.lean
  ----------------------------------------------------------------
  Density and regularity lemmas for smooth, compact–support functions
  on the half-line `[0, ∞)`.  We work with the subclass that vanishes
  at the boundary, so the Dirichlet condition `u(0)=0` holds
  automatically.
-/

import Mathlib.Analysis.Calculus.Bump
import Mathlib.Analysis.Sobolev
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Topology.Algebra.Module

open MeasureTheory Topology Real
open scoped BigOperators

/-!  ### Basic aliases -/

/-- Half-line `[0, ∞)` realised as a subtype. -/
abbrev ℝ≥0 := {x : ℝ // 0 ≤ x}

/-- Lebesgue measure restricted to `[0, ∞)`. -/
abbrev μ₊ : Measure ℝ≥0 := (volume : Measure ℝ).restrict (Set.Ici 0)

/-- Real `L²` on the half-line. -/
abbrev L²(ℝ≥0) := Lp ℝ (fun _ : ℝ≥0 ↦ (1 : ℝ≥0∞)) 2

/-!  ### Dirichlet test space                                                 -/

/--
`C∞₀_D` := smooth, compact-support functions *vanishing at 0* (hence on
a neighbourhood of 0, because they are smooth).
-/
def C∞₀_D : Type _ := {φ : C∞_c ℝ≥0 ℝ // φ ⟨0, le_rfl⟩ = 0}

namespace SmoothCompactSupport

instance : CoeTC C∞₀_D (ℝ≥0 → ℝ) := ⟨fun φ ↦ φ.1⟩
instance : CoeTC C∞₀_D (L²(ℝ≥0))  := ⟨fun φ ↦ (φ.1 : L²(ℝ≥0))⟩

/-!  ## 1.  A fixed bump with value 1 at 0                                      -/

noncomputable
def η : C∞_c ℝ≥0 ℝ :=
  -- Restrict the one–dimensional `ContDiffBump (0) (1)`
  (ContDiffBump.ofNat 0 1).toC∞_c.restrict
    (by
      intro x hx
      -- support is contained in the closed ball of radius 1
      have : (x : ℝ) ≤ 1 := by
        have hx' : dist (x : ℝ) 0 ≤ (1 : ℝ) :=
          by
            simpa [Real.norm_eq_abs, abs_ofNonneg x.property] using hx
        simpa using hx'
      exact this)
    (by
      -- zero outside the open ball radius 1, hence compact support
      have : (ContDiffBump.ofNat 0 1).support ⊆ Metric.closedBall 0 1 :=
        (ContDiffBump.support_subset _)
      simpa using this)

/-- By construction `η 0 = 1`. -/
lemma η_at_zero : η ⟨0, le_rfl⟩ = 1 := by
  simp [η]

/-!  ## 2.  Density of `C∞₀_D` in `L²`                                         -/
lemma dense_L2_halfLine :
    DenseRange (fun φ : C∞₀_D ↦ (φ : L²(ℝ≥0))) := by
  -- Start with ordinary `C∞_c` density.
  have hDense : DenseRange (fun ψ : C∞_c ℝ≥0 ℝ ↦ (ψ : L²(ℝ≥0))) :=
    (SmoothCompactSupport.denseRange_Lp
        (p := (2 : ℝ≥0∞)) (μ := μ₊))
  -- Project every ψ onto the Dirichlet subspace: φ := ψ - ψ(0)·η.
  refine hDense.mono (by
    intro ψ
    let φ : C∞_c ℝ≥0 ℝ := ψ - (ψ ⟨0, le_rfl⟩) • η
    have hφ0 : φ ⟨0, le_rfl⟩ = 0 := by
      simp [φ, η_at_zero]
    exact ⟨⟨φ, hφ0⟩, by
      -- coercions are linear, so ‖φ - ψ‖_L² ≤ ‖ψ(0)·η‖; but η is fixed,
      -- hence the map ψ ↦ φ is continuous → closure unchanged.
      change (φ : L²(ℝ≥0)) = _; rfl⟩ )

/-!  ## 3. Regularity and boundary value                                       -/

lemma mem_H1 (φ : C∞₀_D) : Sobolev 1 μ₊ (φ : L²(ℝ≥0)) := by
  simpa using φ.1.contDiff.sobolev_one

lemma dirichletBC_zero (φ : C∞₀_D) :
    Tendsto (fun x : ℝ≥0 ↦ (φ : ℝ≥0 → ℝ) x) (𝓝[>] 0) (𝓝 0) := by
  -- equal 0 at 0 plus continuity ⇒ limit 0
  have hcont : ContinuousAt (fun x : ℝ≥0 ↦ (φ : ℝ≥0 → ℝ) x) ⟨0, le_rfl⟩ :=
    φ.1.continuous.continuousAt
  simpa [φ.2] using hcont.tendsto

/-!  ## 4.  Weighted L² property                                               -/
lemma V_mul_L2
    {P : Schrodinger.Potential} (φ : C∞₀_D) :
    Schrodinger.V_mul_L2 P (φ : L²(ℝ≥0)) := by
  -- |V| is bounded on the compact support of φ
  rcases
    (P.measurable.isBounded_on_compact φ.1.isBounded_support) with ⟨K, hK⟩
  have hDom :
      (fun x : ℝ≥0 ↦ (P.V x) * φ x) ∈
      Lp ℝ (fun _ : ℝ≥0 ↦ (1 : ℝ≥0∞)) 2 := by
    have hBound : ∀ᵐ x ∂μ₊, ‖(P.V x) * φ x‖ ≤ K * ‖φ x‖ := by
      filter_upwards [self_mem_ae_restrict] with x
      by_cases hx : (x : ℝ≥0) ∈ φ.1.support
      · have : |P.V x| ≤ K := hK _ hx
        have : ‖(P.V x) * φ x‖ ≤ K * ‖φ x‖ := by
          simpa [abs_mul] using
            (mul_le_mul_of_nonneg_right this (norm_nonneg _))
        simpa using this
      · simp [hx, mem_support] at hx
    have hKφ : (fun x ↦ K * ‖φ x‖) ∈
        Lp ℝ (fun _ : ℝ≥0 ↦ (1 : ℝ≥0∞)) 2 := by
      simpa using φ.1.Lp_const_mul (K := K)
    exact (Lp.mem_of_le_mul hDom hKφ)
  simpa [Schrodinger.V_mul_L2] using hDom

/-!  ## 5. Density of the Schrödinger Dirichlet domain                         -/
open Schrodinger

lemma DirichletDomain_dense (P : Schrodinger.Potential) :
    Dense (DirichletDomain P : Set (L²(ℝ≥0))) := by
  refine (dense_L2_halfLine : DenseRange _).mono ?_
  intro φ
  exact
    And.intro (mem_H1 φ) (And.intro (dirichletBC_zero φ) (V_mul_L2 φ))

end SmoothCompactSupport
