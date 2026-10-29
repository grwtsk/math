/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMGaloisIndex

/-!
# Coordinate weight-one CM Hodge profile

For a finite group with a central involution and an odd CM sign row, this file
constructs the finite complex coordinate model of a weight-one Hodge
decomposition:

  H^(1,0) = coordinates supported on positive signs,
  H^(0,1) = coordinates supported on negative signs.

The two subspaces are complementary. The natural coordinate real structure
conjugates coefficients and applies the central label involution; it exchanges
the two Hodge pieces. The sign-defined Weil operator has square -1 and acts by
+i on H^(1,0) and -i on H^(0,1).

This is a semantic coordinate model. It does not yet identify this coordinate
space with C tensor_Q E for a concrete CM field, nor does it prove
polarizability or an abelian-variety realization.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMCoordinateHodge

open CMFourBalance
open CMGaloisIndex

noncomputable section

variable {G : Type*} [Group G] [Fintype G] [DecidableEq G]
  (C : CentralInvolution G) (v : CMOddSignRow G C)

/-- Coordinates with support only on positive CM signs. -/
def holomorphicPart : Submodule ℂ (G → ℂ) where
  carrier := {z | ∀ g, v.value g = -1 → z g = 0}
  zero_mem' := by intro g _; rfl
  add_mem' := by
    intro x y hx hy g hg
    simp [hx g hg, hy g hg]
  smul_mem' := by
    intro a x hx g hg
    simp [hx g hg]

/-- Coordinates with support only on negative CM signs. -/
def antiholomorphicPart : Submodule ℂ (G → ℂ) where
  carrier := {z | ∀ g, v.value g = 1 → z g = 0}
  zero_mem' := by intro g _; rfl
  add_mem' := by
    intro x y hx hy g hg
    simp [hx g hg, hy g hg]
  smul_mem' := by
    intro a x hx g hg
    simp [hx g hg]

/-- Projection to the positive-sign coordinates. -/
def holomorphicProjector : (G → ℂ) →ₗ[ℂ] (G → ℂ) where
  toFun z g := if v.value g = 1 then z g else 0
  map_add' x y := by
    funext g
    by_cases h : v.value g = 1 <;> simp [h]
  map_smul' a x := by
    funext g
    by_cases h : v.value g = 1 <;> simp [h]

/-- Projection to the negative-sign coordinates. -/
def antiholomorphicProjector : (G → ℂ) →ₗ[ℂ] (G → ℂ) where
  toFun z g := if v.value g = -1 then z g else 0
  map_add' x y := by
    funext g
    by_cases h : v.value g = -1 <;> simp [h]
  map_smul' a x := by
    funext g
    by_cases h : v.value g = -1 <;> simp [h]

theorem holomorphicProjector_mem (z : G → ℂ) :
    holomorphicProjector v z ∈ holomorphicPart v := by
  intro g hg
  simp [holomorphicProjector, hg]

theorem antiholomorphicProjector_mem (z : G → ℂ) :
    antiholomorphicProjector v z ∈ antiholomorphicPart v := by
  intro g hg
  simp [antiholomorphicProjector, hg]

theorem holomorphicProjector_same
    {z : G → ℂ} (hz : z ∈ holomorphicPart v) :
    holomorphicProjector v z = z := by
  funext g
  rcases v.isSign g with hg | hg
  · simp [holomorphicProjector, hg]
  · have hz0 := hz g hg
    simp [holomorphicProjector, hg, hz0]

theorem antiholomorphicProjector_same
    {z : G → ℂ} (hz : z ∈ antiholomorphicPart v) :
    antiholomorphicProjector v z = z := by
  funext g
  rcases v.isSign g with hg | hg
  · have hz0 := hz g hg
    simp [antiholomorphicProjector, hg, hz0]
  · simp [antiholomorphicProjector, hg]

theorem projector_sum (z : G → ℂ) :
    holomorphicProjector v z + antiholomorphicProjector v z = z := by
  funext g
  rcases v.isSign g with hg | hg <;>
    simp [holomorphicProjector, antiholomorphicProjector, hg]

/-- The positive- and negative-sign coordinate pieces are complementary. -/
theorem hodgePieces_isCompl :
    IsCompl (holomorphicPart v) (antiholomorphicPart v) := by
  refine ⟨Submodule.disjoint_def.mpr ?_, codisjoint_iff.mpr ?_⟩
  · intro z hz hbar
    funext g
    rcases v.isSign g with hg | hg
    · exact hbar g hg
    · exact hz g hg
  · apply top_unique
    intro z _
    rw [← projector_sum v z]
    exact (holomorphicPart v ⊔ antiholomorphicPart v).add_mem
      (le_sup_left (holomorphicProjector_mem v z))
      (le_sup_right (antiholomorphicProjector_mem v z))

/-- Real conjugation on the coordinate model: conjugate coefficients and
move the embedding label by the central involution. -/
def realConj (z : G → ℂ) : G → ℂ :=
  fun g => conj (z (C.conj g))

@[simp]
theorem realConj_involutive (z : G → ℂ) :
    realConj C (realConj C z) = z := by
  funext g
  simp [realConj, C.conj_involutive]

/-- Real conjugation sends the holomorphic part to the antiholomorphic part. -/
theorem realConj_holomorphic_mem
    {z : G → ℂ} (hz : z ∈ holomorphicPart v) :
    realConj C z ∈ antiholomorphicPart v := by
  intro g hg
  have hc : v.value (C.conj g) = -1 := by
    rw [v.odd, hg]
    norm_num
  simp [realConj, hz (C.conj g) hc]

/-- Real conjugation sends the antiholomorphic part to the holomorphic part. -/
theorem realConj_antiholomorphic_mem
    {z : G → ℂ} (hz : z ∈ antiholomorphicPart v) :
    realConj C z ∈ holomorphicPart v := by
  intro g hg
  have hc : v.value (C.conj g) = 1 := by
    rw [v.odd, hg]
    norm_num
  simp [realConj, hz (C.conj g) hc]

/-- Sign-defined Weil operator on the coordinate model. -/
def weilOperator : (G → ℂ) →ₗ[ℂ] (G → ℂ) where
  toFun z g := (v.value g : ℂ) * Complex.I * z g
  map_add' x y := by
    funext g
    simp [mul_add]
  map_smul' a x := by
    funext g
    simp [mul_assoc, mul_left_comm, mul_comm]

/-- The weight-one Weil operator squares to minus the identity. -/
theorem weilOperator_sq (z : G → ℂ) :
    weilOperator v (weilOperator v z) = -z := by
  funext g
  rcases v.isSign g with hg | hg <;>
    simp [weilOperator, hg] <;> ring

/-- The Weil operator is +i on the holomorphic part. -/
theorem weilOperator_holomorphic
    {z : G → ℂ} (hz : z ∈ holomorphicPart v) :
    weilOperator v z = Complex.I • z := by
  funext g
  rcases v.isSign g with hg | hg
  · simp [weilOperator, hg]
  · have hz0 := hz g hg
    simp [weilOperator, hg, hz0]

/-- The Weil operator is -i on the antiholomorphic part. -/
theorem weilOperator_antiholomorphic
    {z : G → ℂ} (hz : z ∈ antiholomorphicPart v) :
    weilOperator v z = (-Complex.I) • z := by
  funext g
  rcases v.isSign g with hg | hg
  · have hz0 := hz g hg
    simp [weilOperator, hg, hz0]
  · simp [weilOperator, hg]

/-- The real structure commutes with the real-linear Weil action. -/
theorem realConj_weilOperator (z : G → ℂ) :
    realConj C (weilOperator v z) =
      weilOperator v (realConj C z) := by
  funext g
  rcases v.isSign g with hg | hg
  · have hc : v.value (C.conj g) = -1 := by
      rw [v.odd, hg]
      norm_num
    simp [realConj, weilOperator, hg, hc, map_mul]
  · have hc : v.value (C.conj g) = 1 := by
      rw [v.odd, hg]
      norm_num
    simp [realConj, weilOperator, hg, hc, map_mul]

/-- Compact source-level certificate for the coordinate weight-one Hodge
profile. This packages only the finite semantic structure proved above. -/
structure CoordinateWeightOneHodgeProfile where
  H10 : Submodule ℂ (G → ℂ)
  H01 : Submodule ℂ (G → ℂ)
  decomposition : IsCompl H10 H01
  conjugation : (G → ℂ) → (G → ℂ)
  conjugation_involutive : ∀ z, conjugation (conjugation z) = z
  conjugation_H10_to_H01 : ∀ {z}, z ∈ H10 → conjugation z ∈ H01
  conjugation_H01_to_H10 : ∀ {z}, z ∈ H01 → conjugation z ∈ H10
  weil : (G → ℂ) →ₗ[ℂ] (G → ℂ)
  weil_sq : ∀ z, weil (weil z) = -z
  weil_H10 : ∀ {z}, z ∈ H10 → weil z = Complex.I • z
  weil_H01 : ∀ {z}, z ∈ H01 → weil z = (-Complex.I) • z

/-- Canonical coordinate weight-one Hodge profile attached to an odd sign row. -/
def coordinateHodgeProfile : CoordinateWeightOneHodgeProfile C v where
  H10 := holomorphicPart v
  H01 := antiholomorphicPart v
  decomposition := hodgePieces_isCompl v
  conjugation := realConj C
  conjugation_involutive := realConj_involutive C
  conjugation_H10_to_H01 := realConj_holomorphic_mem C v
  conjugation_H01_to_H10 := realConj_antiholomorphic_mem C v
  weil := weilOperator v
  weil_sq := weilOperator_sq v
  weil_H10 := weilOperator_holomorphic v
  weil_H01 := weilOperator_antiholomorphic v

end

end GRWTSK.AlgebraicGeometry.Hodge.CMCoordinateHodge
