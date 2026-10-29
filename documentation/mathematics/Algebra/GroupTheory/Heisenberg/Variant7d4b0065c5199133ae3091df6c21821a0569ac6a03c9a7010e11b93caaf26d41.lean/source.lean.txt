import FormalResearch.PositiveAtlas.ModularBoundary.Phase
import FormalResearch.PositiveAtlas.Grassmannian.BraidCoordinates

/-!
# Tally multiplication, actual group commutators, and central phases

The same real matrices used by the weighted braid are bundled as units, with
both inverse laws proved. The center character is defined on its integer label
via ZMod, not on the entire noncommutative group. A separate theorem records
why a character of the whole group into an abelian target loses commutators.
-/

namespace FormalResearch.PositiveAtlas.ModularBoundary.Heisenberg

open FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

/-- The central matrix with the indicated real entry. -/
def central (t : ℝ) : Matrix (Fin 3) (Fin 3) ℝ :=
  !![1, 0, t; 0, 1, 0; 0, 0, 1]

/-- Addition of first-direction tallies is matrix multiplication. -/
theorem x₁_add (a b : ℝ) : Braid.x₁ a * Braid.x₁ b = Braid.x₁ (a + b) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Braid.x₁, Matrix.mul_apply, Fin.sum_univ_succ]
  ring

/-- Addition of second-direction tallies is matrix multiplication. -/
theorem x₂_add (a b : ℝ) : Braid.x₂ a * Braid.x₂ b = Braid.x₂ (a + b) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Braid.x₂, Matrix.mul_apply, Fin.sum_univ_succ]
  ring

/-- Central labels also add under matrix multiplication. -/
theorem central_add (a b : ℝ) : central a * central b = central (a + b) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [central, Matrix.mul_apply, Fin.sum_univ_succ]
  ring

/-- The actual first root-subgroup element, with its explicit inverse. -/
def X (a : ℝ) : (Matrix (Fin 3) (Fin 3) ℝ)ˣ where
  val := Braid.x₁ a
  inv := Braid.x₁ (-a)
  val_inv := by
    rw [x₁_add]
    ext i j
    fin_cases i <;> fin_cases j <;> simp [Braid.x₁]
  inv_val := by
    rw [x₁_add]
    ext i j
    fin_cases i <;> fin_cases j <;> simp [Braid.x₁]

/-- The actual second root-subgroup element, with its explicit inverse. -/
def Y (b : ℝ) : (Matrix (Fin 3) (Fin 3) ℝ)ˣ where
  val := Braid.x₂ b
  inv := Braid.x₂ (-b)
  val_inv := by
    rw [x₂_add]
    ext i j
    fin_cases i <;> fin_cases j <;> simp [Braid.x₂]
  inv_val := by
    rw [x₂_add]
    ext i j
    fin_cases i <;> fin_cases j <;> simp [Braid.x₂]

/-- A central group element, not only a matrix carrying a name. -/
def Z (t : ℝ) : (Matrix (Fin 3) (Fin 3) ℝ)ˣ where
  val := central t
  inv := central (-t)
  val_inv := by
    rw [central_add]
    ext i j
    fin_cases i <;> fin_cases j <;> simp [central]
  inv_val := by
    rw [central_add]
    ext i j
    fin_cases i <;> fin_cases j <;> simp [central]

/-- The central parameter is recovered from the upper-right matrix entry. -/
theorem central_injective : Function.Injective central := by
  intro a b h
  have hv := congrArg (fun M : Matrix (Fin 3) (Fin 3) ℝ => M 0 2) h
  simpa [central] using hv

/-- A literal group commutator carries the product of its two tally parameters. -/
theorem commutator_eq_central (a b : ℝ) :
    X a * Y b * (X a)⁻¹ * (Y b)⁻¹ = Z (a * b) := by
  apply Units.ext
  change Braid.x₁ a * Braid.x₂ b * Braid.x₁ (-a) * Braid.x₂ (-b) = central (a * b)
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Braid.x₁, Braid.x₂, central, Matrix.mul_apply, Fin.sum_univ_succ]

/-- Equal specified integer commutators are exactly equal integer tally products. -/
theorem tally_commutator_iff (a b n : ℕ) :
    X a * Y b * (X a)⁻¹ * (Y b)⁻¹ = Z n ↔ a * b = n := by
  rw [commutator_eq_central]
  constructor
  · intro h
    have hv := congrArg (fun u : (Matrix (Fin 3) (Fin 3) ℝ)ˣ => u.val) h
    have he := central_injective hv
    exact_mod_cast he
  · intro h
    have he : (a : ℝ) * b = n := by exact_mod_cast h
    rw [he]

/-- The standard character of the integer center label. -/
def centralCharacter (p : ℕ) [NeZero p] : AddChar ℤ ℂ where
  toFun t := ZMod.stdAddChar (t : ZMod p)
  map_zero_eq_one' := by simp
  map_add_eq_mul' a b := by simp only [Int.cast_add, AddChar.map_add_eq_mul]

/-- On a tally product the central character is precisely the diagram's phase. -/
theorem centralCharacter_product (p : ℕ) [NeZero p] (a b : ℕ) :
    centralCharacter p ((a : ℤ) * b) = phase p (a * b) := by
  simp [centralCharacter, phase]

/-- The actual commutator label has zero modular chord exactly when the modulus divides ab. -/
theorem commutator_phase_kernel (p : ℕ) [NeZero p] (a b : ℕ) :
    X a * Y b * (X a)⁻¹ * (Y b)⁻¹ = Z ((a * b : ℕ) : ℝ) ∧
    (centralCharacter p ((a : ℤ) * b) = 1 ↔ p ∣ a * b) := by
  constructor
  · simpa only [Nat.cast_mul] using commutator_eq_central (a : ℝ) (b : ℝ)
  · rw [centralCharacter_product, phase_eq_one_iff]

/-- An abelian character of a whole group kills its commutators; the center restriction matters. -/
theorem abelian_character_kills_commutator {G H : Type*} [Group G] [CommGroup H]
    (f : G →* H) (g h : G) : f (g * h * g⁻¹ * h⁻¹) = 1 := by
  simp [mul_assoc]

end

end FormalResearch.PositiveAtlas.ModularBoundary.Heisenberg
