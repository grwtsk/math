import FormalResearch.PositiveAtlas.QuadraticSwapInvolution
import Mathlib.Tactic.Module



























namespace FormalResearch.PositiveAtlas

universe u

variable {V : Type u} [AddCommGroup V] [Module ℝ V]


noncomputable def involutionPlus (J : V →ₗ[ℝ] V) : V →ₗ[ℝ] V :=
  (1 / 2 : ℝ) • (LinearMap.id + J)


noncomputable def involutionMinus (J : V →ₗ[ℝ] V) : V →ₗ[ℝ] V :=
  (1 / 2 : ℝ) • (LinearMap.id - J)

@[simp]
theorem involutionPlus_apply (J : V →ₗ[ℝ] V) (x : V) :
    involutionPlus J x = (1 / 2 : ℝ) • (x + J x) := by
  simp [involutionPlus]

@[simp]
theorem involutionMinus_apply (J : V →ₗ[ℝ] V) (x : V) :
    involutionMinus J x = (1 / 2 : ℝ) • (x - J x) := by
  simp [involutionMinus]


theorem involution_projection_decomposition
    (J : V →ₗ[ℝ] V) (x : V) :
    involutionPlus J x + involutionMinus J x = x := by
  simp only [involutionPlus_apply, involutionMinus_apply]
  module


theorem involutionPlus_idempotent
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) :
    ∀ x, involutionPlus J (involutionPlus J x) = involutionPlus J x := by
  intro x
  simp only [involutionPlus_apply, map_smul, map_add, hJ]
  module


theorem involutionMinus_idempotent
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) :
    ∀ x, involutionMinus J (involutionMinus J x) = involutionMinus J x := by
  intro x
  simp only [involutionMinus_apply, map_smul, map_sub, hJ]
  module


theorem involutionPlus_after_minus
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) (x : V) :
    involutionPlus J (involutionMinus J x) = 0 := by
  simp only [involutionPlus_apply, involutionMinus_apply, map_smul, map_sub, hJ]
  module


theorem involutionMinus_after_plus
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) (x : V) :
    involutionMinus J (involutionPlus J x) = 0 := by
  simp only [involutionMinus_apply, involutionPlus_apply, map_smul, map_add, hJ]
  module


theorem involution_on_plus
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) (x : V) :
    J (involutionPlus J x) = involutionPlus J x := by
  simp only [involutionPlus_apply, map_smul, map_add, hJ]
  module


theorem involution_on_minus
    (J : V →ₗ[ℝ] V) (hJ : ∀ x, J (J x) = x) (x : V) :
    J (involutionMinus J x) = -involutionMinus J x := by
  simp only [involutionMinus_apply, map_smul, map_sub, hJ]
  module


structure CommutingInvolutions (V : Type u) [AddCommGroup V] [Module ℝ V] where
  first : V →ₗ[ℝ] V
  second : V →ₗ[ℝ] V
  first_sq : ∀ x, first (first x) = x
  second_sq : ∀ x, second (second x) = x
  commute : ∀ x, first (second x) = second (first x)

namespace CommutingInvolutions

variable (C : CommutingInvolutions V)


theorem plusPlus_commute (x : V) :
    involutionPlus C.first (involutionPlus C.second x) =
      involutionPlus C.second (involutionPlus C.first x) := by
  simp only [involutionPlus_apply, map_smul, map_add]
  rw [C.commute]
  module


theorem plusMinus_commute (x : V) :
    involutionPlus C.first (involutionMinus C.second x) =
      involutionMinus C.second (involutionPlus C.first x) := by
  simp only [involutionPlus_apply, involutionMinus_apply, map_smul, map_add, map_sub]
  rw [C.commute]
  module


theorem minusPlus_commute (x : V) :
    involutionMinus C.first (involutionPlus C.second x) =
      involutionPlus C.second (involutionMinus C.first x) := by
  simp only [involutionMinus_apply, involutionPlus_apply, map_smul, map_add, map_sub]
  rw [C.commute]
  module


theorem minusMinus_commute (x : V) :
    involutionMinus C.first (involutionMinus C.second x) =
      involutionMinus C.second (involutionMinus C.first x) := by
  simp only [involutionMinus_apply, map_smul, map_sub]
  rw [C.commute]
  module


noncomputable def sectorPP : V →ₗ[ℝ] V :=
  (involutionPlus C.first).comp (involutionPlus C.second)


noncomputable def sectorPM : V →ₗ[ℝ] V :=
  (involutionPlus C.first).comp (involutionMinus C.second)


noncomputable def sectorMP : V →ₗ[ℝ] V :=
  (involutionMinus C.first).comp (involutionPlus C.second)


noncomputable def sectorMM : V →ₗ[ℝ] V :=
  (involutionMinus C.first).comp (involutionMinus C.second)

@[simp]
theorem sectorPP_apply (x : V) :
    C.sectorPP x =
      involutionPlus C.first (involutionPlus C.second x) :=
  rfl

@[simp]
theorem sectorPM_apply (x : V) :
    C.sectorPM x =
      involutionPlus C.first (involutionMinus C.second x) :=
  rfl

@[simp]
theorem sectorMP_apply (x : V) :
    C.sectorMP x =
      involutionMinus C.first (involutionPlus C.second x) :=
  rfl

@[simp]
theorem sectorMM_apply (x : V) :
    C.sectorMM x =
      involutionMinus C.first (involutionMinus C.second x) :=
  rfl

private theorem idempotent_comp_of_commute
    (P Q : V →ₗ[ℝ] V)
    (hP : ∀ x, P (P x) = P x)
    (hQ : ∀ x, Q (Q x) = Q x)
    (hPQ : ∀ x, P (Q x) = Q (P x)) :
    ∀ x, P (Q (P (Q x))) = P (Q x) := by
  intro x
  rw [← hPQ (Q x), hP (Q (Q x)), hQ x]


theorem sectorPP_idempotent :
    ∀ x, C.sectorPP (C.sectorPP x) = C.sectorPP x :=
  idempotent_comp_of_commute
    (involutionPlus C.first) (involutionPlus C.second)
    (involutionPlus_idempotent C.first C.first_sq)
    (involutionPlus_idempotent C.second C.second_sq)
    C.plusPlus_commute


theorem sectorPM_idempotent :
    ∀ x, C.sectorPM (C.sectorPM x) = C.sectorPM x :=
  idempotent_comp_of_commute
    (involutionPlus C.first) (involutionMinus C.second)
    (involutionPlus_idempotent C.first C.first_sq)
    (involutionMinus_idempotent C.second C.second_sq)
    C.plusMinus_commute


theorem sectorMP_idempotent :
    ∀ x, C.sectorMP (C.sectorMP x) = C.sectorMP x :=
  idempotent_comp_of_commute
    (involutionMinus C.first) (involutionPlus C.second)
    (involutionMinus_idempotent C.first C.first_sq)
    (involutionPlus_idempotent C.second C.second_sq)
    C.minusPlus_commute


theorem sectorMM_idempotent :
    ∀ x, C.sectorMM (C.sectorMM x) = C.sectorMM x :=
  idempotent_comp_of_commute
    (involutionMinus C.first) (involutionMinus C.second)
    (involutionMinus_idempotent C.first C.first_sq)
    (involutionMinus_idempotent C.second C.second_sq)
    C.minusMinus_commute


theorem four_sector_decomposition (x : V) :
    C.sectorPP x + C.sectorPM x + C.sectorMP x + C.sectorMM x = x := by
  simp only [sectorPP_apply, sectorPM_apply, sectorMP_apply, sectorMM_apply,
    involutionPlus_apply, involutionMinus_apply, map_smul, map_add, map_sub]
  module


theorem sectorPP_after_PM (x : V) :
    C.sectorPP (C.sectorPM x) = 0 := by
  change involutionPlus C.first
      (involutionPlus C.second
        (involutionPlus C.first (involutionMinus C.second x))) = 0
  rw [← C.plusPlus_commute (involutionMinus C.second x)]
  rw [involutionPlus_idempotent C.first C.first_sq]
  rw [involutionPlus_after_minus C.second C.second_sq]
  simp


theorem sectorPM_after_PP (x : V) :
    C.sectorPM (C.sectorPP x) = 0 := by
  change involutionPlus C.first
      (involutionMinus C.second
        (involutionPlus C.first (involutionPlus C.second x))) = 0
  rw [← C.plusMinus_commute (involutionPlus C.second x)]
  rw [involutionPlus_idempotent C.first C.first_sq]
  rw [involutionMinus_after_plus C.second C.second_sq]
  simp


theorem sectorPP_after_MP (x : V) :
    C.sectorPP (C.sectorMP x) = 0 := by
  change involutionPlus C.first
      (involutionPlus C.second
        (involutionMinus C.first (involutionPlus C.second x))) = 0
  rw [← C.minusPlus_commute (involutionPlus C.second x)]
  rw [involutionPlus_idempotent C.second C.second_sq]
  rw [involutionPlus_after_minus C.first C.first_sq]


theorem sectorMP_after_PP (x : V) :
    C.sectorMP (C.sectorPP x) = 0 := by
  change involutionMinus C.first
      (involutionPlus C.second
        (involutionPlus C.first (involutionPlus C.second x))) = 0
  rw [← C.plusPlus_commute (involutionPlus C.second x)]
  rw [involutionPlus_idempotent C.second C.second_sq]
  rw [involutionMinus_after_plus C.first C.first_sq]


theorem sectorPP_after_MM (x : V) :
    C.sectorPP (C.sectorMM x) = 0 := by
  change involutionPlus C.first
      (involutionPlus C.second
        (involutionMinus C.first (involutionMinus C.second x))) = 0
  rw [← C.minusPlus_commute (involutionMinus C.second x)]
  rw [involutionPlus_after_minus C.second C.second_sq]
  simp


theorem sectorMM_after_PP (x : V) :
    C.sectorMM (C.sectorPP x) = 0 := by
  change involutionMinus C.first
      (involutionMinus C.second
        (involutionPlus C.first (involutionPlus C.second x))) = 0
  rw [← C.plusMinus_commute (involutionPlus C.second x)]
  rw [involutionMinus_after_plus C.second C.second_sq]
  simp


theorem sectorPM_after_MP (x : V) :
    C.sectorPM (C.sectorMP x) = 0 := by
  change involutionPlus C.first
      (involutionMinus C.second
        (involutionMinus C.first (involutionPlus C.second x))) = 0
  rw [← C.minusMinus_commute (involutionPlus C.second x)]
  rw [involutionPlus_after_minus C.first C.first_sq]
  simp


theorem sectorMP_after_PM (x : V) :
    C.sectorMP (C.sectorPM x) = 0 := by
  change involutionMinus C.first
      (involutionPlus C.second
        (involutionPlus C.first (involutionMinus C.second x))) = 0
  rw [← C.plusPlus_commute (involutionMinus C.second x)]
  rw [involutionMinus_after_plus C.first C.first_sq]
  simp


theorem sectorPM_after_MM (x : V) :
    C.sectorPM (C.sectorMM x) = 0 := by
  change involutionPlus C.first
      (involutionMinus C.second
        (involutionMinus C.first (involutionMinus C.second x))) = 0
  rw [← C.minusMinus_commute (involutionMinus C.second x)]
  rw [involutionMinus_idempotent C.second C.second_sq]
  rw [involutionPlus_after_minus C.first C.first_sq]
  simp


theorem sectorMM_after_PM (x : V) :
    C.sectorMM (C.sectorPM x) = 0 := by
  change involutionMinus C.first
      (involutionMinus C.second
        (involutionPlus C.first (involutionMinus C.second x))) = 0
  rw [← C.plusMinus_commute (involutionMinus C.second x)]
  rw [involutionMinus_idempotent C.second C.second_sq]
  rw [involutionMinus_after_plus C.first C.first_sq]
  simp


theorem sectorMP_after_MM (x : V) :
    C.sectorMP (C.sectorMM x) = 0 := by
  change involutionMinus C.first
      (involutionPlus C.second
        (involutionMinus C.first (involutionMinus C.second x))) = 0
  rw [← C.minusPlus_commute (involutionMinus C.second x)]
  rw [involutionMinus_idempotent C.first C.first_sq]
  rw [involutionPlus_after_minus C.second C.second_sq]
  simp


theorem sectorMM_after_MP (x : V) :
    C.sectorMM (C.sectorMP x) = 0 := by
  change involutionMinus C.first
      (involutionMinus C.second
        (involutionMinus C.first (involutionPlus C.second x))) = 0
  rw [← C.minusMinus_commute (involutionPlus C.second x)]
  rw [involutionMinus_idempotent C.first C.first_sq]
  rw [involutionMinus_after_plus C.second C.second_sq]
  simp


noncomputable def interventionSector : V →ₗ[ℝ] V :=
  C.sectorPM


theorem interventionSector_idempotent :
    ∀ x, C.interventionSector (C.interventionSector x) = C.interventionSector x :=
  C.sectorPM_idempotent


theorem first_on_interventionSector (x : V) :
    C.first (C.interventionSector x) = C.interventionSector x := by
  change C.first
      (involutionPlus C.first (involutionMinus C.second x)) =
    involutionPlus C.first (involutionMinus C.second x)
  exact involution_on_plus C.first C.first_sq _


theorem second_on_interventionSector (x : V) :
    C.second (C.interventionSector x) = -C.interventionSector x := by
  change C.second
      (involutionPlus C.first (involutionMinus C.second x)) =
    -involutionPlus C.first (involutionMinus C.second x)
  have hcomm :
      C.second (involutionPlus C.first (involutionMinus C.second x)) =
        involutionPlus C.first
          (C.second (involutionMinus C.second x)) := by
    simp only [involutionPlus_apply, map_smul, map_add]
    rw [← C.commute]
  rw [hcomm, involution_on_minus C.second C.second_sq]
  simp

end CommutingInvolutions

end FormalResearch.PositiveAtlas
