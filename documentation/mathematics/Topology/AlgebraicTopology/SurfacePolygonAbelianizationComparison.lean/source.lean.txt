/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Abelianization, FreeGroup.lift, Multiplicative and list theorems: Mathlib authors.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#774. Exact parent PR #767 head
23b4fe218348f5831ac74a13c7bfeaa4e965fda2.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCellularBoundary
import Mathlib.GroupTheory.Abelianization.Defs
import Mathlib.Algebra.Group.Int.TypeTags

/-!
# Exact polygon signed incidence as a real free-group character

Each source-specific signed coefficient of the ACTUAL oriented polygon
edge list is the integer value of a genuine group homomorphism from
Mathlib's FreeGroup on the SAME named source generators.

The homomorphism is FreeGroup.lift of an integer-valued generator
coordinate, and the coordinate factors through Mathlib's actual
Abelianization. Consequently this compares the finite cellular
signed-incidence ledger of issue #758 to the canonical free-group
commutator quotient, rather than to a new arbitrary zero boundary.

Two independent observations must not be conflated:
* The full polygon relator has ZERO signed incidence, and its image in
  Mathlib's canonical free-group abelianization is the identity.
* A single handle commutator can have ZERO signed incidence and STILL
  be nonidentity in the true noncommutative free group, as witnessed
  by the already constructed Heisenberg group.

No proof of a topological surface, a cellular/singular H1 isomorphism,
a coordinate equivalence on the whole Abelianization, van Kampen,
Selberg/WP/GUE, arithmetic Chowla or RH is attempted here.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAbelianizationComparison

open GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive
open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPresentationSeam
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCellularBoundary

/-- A genuine integer-valued coordinate on a named FreeGroup generator.
The multiplicative type tag ensures it can be extended by FreeGroup.lift
to a true group homomorphism, without pretending that a raw signed word
sum itself is a group homomorphism. -/
def coordinateLetter (k : ℕ) (x a : GenusLetter k) :
    Multiplicative ℤ :=
  Multiplicative.ofAdd (if a = x then 1 else 0)

/-- The actual universal group homomorphism from the entire free group
to the additive integers expressed multiplicatively. -/
def exponentCharacter (k : ℕ) (x : GenusLetter k) :
    FreeGroup (GenusLetter k) →* Multiplicative ℤ :=
  FreeGroup.lift (coordinateLetter k x)

/-- Exact value on the generator with the same source ID. -/
@[simp] theorem exponentCharacter_generator (k : ℕ)
    (x a : GenusLetter k) :
    ((exponentCharacter k x) (FreeGroup.of a)).toAdd =
      if a = x then 1 else 0 := by
  simp [exponentCharacter, coordinateLetter]

/-- Exact value on one oriented edge. Inverses contribute -1
to the same integer coordinate rather than an unrelated source ID. -/
theorem exponentCharacter_signedSide (k : ℕ)
    (x : GenusLetter k) (side : SignedSide k) :
    ((exponentCharacter k x) (signedSideValue k side)).toAdd =
      signedSideIncidence k x side := by
  rcases side with ⟨a, direction⟩
  cases direction <;>
    by_cases h : a = x <;>
      simp [signedSideValue, signedSideIncidence,
        exponentCharacter, coordinateLetter, h]

/-- Precise bridge from EVERY literal signed source-edge word to the
actual FreeGroup character; not only the special complete polygon word.

This theorem is the consumer of the existing signedWordCoefficient
definition and checks additivity by induction on the original list. -/
theorem exponentCharacter_polygonWord (k : ℕ)
    (x : GenusLetter k) (sides : List (SignedSide k)) :
    ((exponentCharacter k x) (polygonBoundaryEval k sides)).toAdd =
      signedWordCoefficient k x sides := by
  induction sides with
  | nil =>
      simp [polygonBoundaryEval, evalWord, signedWordCoefficient]
  | cons side rest ih =>
      change ((exponentCharacter k x)
        (signedSideValue k side * polygonBoundaryEval k rest)).toAdd =
          signedSideIncidence k x side +
            signedWordCoefficient k x rest
      rw [map_mul, Multiplicative.toAdd_mul,
        exponentCharacter_signedSide, ih]

/-- The coordinate is transported through the REAL Mathlib
abelianization quotient by its universal property. It cannot be
interpreted as an unverified coordinate on a fabricated H1. -/
def abelianCoordinate (k : ℕ) (x : GenusLetter k) :
    Abelianization (FreeGroup (GenusLetter k)) →* Multiplicative ℤ :=
  Abelianization.lift (exponentCharacter k x)

/-- On the actual free-group quotient, the coordinate has precisely
the same signed-incidence value of the original ordered edge list. -/
theorem abelianCoordinate_polygonWord (k : ℕ)
    (x : GenusLetter k) (sides : List (SignedSide k)) :
    (abelianCoordinate k x
      (Abelianization.of (polygonBoundaryEval k sides))).toAdd =
        signedWordCoefficient k x sides := by
  simpa [abelianCoordinate] using
    exponentCharacter_polygonWord k x sides

/-- The complete polygon's signed coordinate is zero, consuming the
actual incidence proof from #758 without recomputing a zero oracle. -/
theorem polygonCharacter_zero (k : ℕ) (x : GenusLetter k) :
    ((exponentCharacter k x)
      (polygonBoundaryEval k (polygonBoundaryWord k))).toAdd = 0 := by
  rw [exponentCharacter_polygonWord,
    signedWordCoefficient_polygon_zero]

/-- Every coordinate factored through the canonical abelianization
also vanishes on the same complete polygon relator. -/
theorem abelianPolygonCoordinate_zero (k : ℕ) (x : GenusLetter k) :
    (abelianCoordinate k x
      (Abelianization.of (higherGenusRelator k))).toAdd = 0 := by
  rw [← polygonBoundaryWord_eval_eq_relator k]
  rw [abelianCoordinate_polygonWord,
    signedWordCoefficient_polygon_zero]

/-- The canonical Mathlib abelianization kills every actual group
commutator by group-theoretic multiplication, not by assuming the
integer-coordinate family is jointly injective. -/
theorem abelianization_wordCommutator_zero (k : ℕ)
    (a b : FreeGroup (GenusLetter k)) :
    (Abelianization.of (wordCommutator a b) :
      Abelianization (FreeGroup (GenusLetter k))) = 1 := by
  simp [wordCommutator, map_mul, map_inv,
    mul_assoc, mul_left_comm, mul_comm]

/-- The two BASE handle commutators map to identity in Mathlib's
canonical abelianization of the complete true free group. -/
theorem abelianization_firstTwoRelator_zero (k : ℕ) :
    (Abelianization.of (firstTwoRelator k) :
      Abelianization (FreeGroup (GenusLetter k))) = 1 := by
  unfold firstTwoRelator
  rw [map_mul]
  rw [abelianization_wordCommutator_zero,
    abelianization_wordCommutator_zero]
  simp

/-- Every additional actual handle relator is similarly killed
in the canonical group quotient, retaining its source handle ID. -/
theorem abelianization_extraHandleRelator_zero (k : ℕ)
    (j : Fin k) :
    (Abelianization.of (extraHandleRelator k j) :
      Abelianization (FreeGroup (GenusLetter k))) = 1 := by
  unfold extraHandleRelator
  exact abelianization_wordCommutator_zero k _ _

/-- Canonical abelianization annihilates the entire ORDERED extra
relator list; this holds for k=0 as well as any positive k. -/
theorem abelianization_extraRelatorList_zero (k : ℕ) :
    (Abelianization.of ((extraRelatorList k).prod) :
      Abelianization (FreeGroup (GenusLetter k))) = 1 := by
  calc
    (Abelianization.of ((extraRelatorList k).prod) :
      Abelianization (FreeGroup (GenusLetter k))) =
        ((extraRelatorList k).map
          (Abelianization.of :
            FreeGroup (GenusLetter k) →*
              Abelianization (FreeGroup (GenusLetter k)))).prod :=
      (List.prod_hom (extraRelatorList k)
        (Abelianization.of :
          FreeGroup (GenusLetter k) →*
            Abelianization (FreeGroup (GenusLetter k)))).symm
    _ = 1 := by
      apply List.prod_eq_one
      intro z hz
      obtain ⟨r, hr, rfl⟩ := List.mem_map.mp hz
      change r ∈ List.ofFn (extraHandleRelator k) at hr
      obtain ⟨j, rfl⟩ := List.mem_ofFn.mp hr
      exact abelianization_extraHandleRelator_zero k j

/-- The entire genus-g polygon relator maps to one under the actual
canonical FreeGroup abelianization. This proof consumes the complete
group commutator structure, NOT merely zero signed characters. -/
theorem canonicalAbelianization_higherGenusRelator_eq_one (k : ℕ) :
    (Abelianization.of (higherGenusRelator k) :
      Abelianization (FreeGroup (GenusLetter k))) = 1 := by
  unfold higherGenusRelator
  rw [map_mul, abelianization_firstTwoRelator_zero,
    abelianization_extraRelatorList_zero]
  simp

/-- The exact raw polygon word inherits the canonical abelianization
equation because it is PROVED equal to the selected source relator. -/
theorem canonicalAbelianization_polygonBoundary_eq_one (k : ℕ) :
    (Abelianization.of
      (polygonBoundaryEval k (polygonBoundaryWord k)) :
      Abelianization (FreeGroup (GenusLetter k))) = 1 := by
  rw [polygonBoundaryWord_eval_eq_relator]
  exact canonicalAbelianization_higherGenusRelator_eq_one k

/-- Hostile fixture: deleting the inverse b edge is DETECTED by the
actual free-group coordinate homomorphism as integer +1. -/
theorem missingInverseEdge_character_one (k : ℕ) :
    ((exponentCharacter k (baseLetter k 1))
      (polygonBoundaryEval k (missingInverseEdge k))).toAdd = 1 := by
  rw [exponentCharacter_polygonWord, missingInverseEdge_nonzero]

/-- Consequently the corrupted word's canonical abelianization is
NOT the identity. This rejects a fake zero-invariant checker. -/
theorem missingInverseEdge_abelianization_ne_one (k : ℕ) :
    (Abelianization.of
      (polygonBoundaryEval k (missingInverseEdge k)) :
      Abelianization (FreeGroup (GenusLetter k))) ≠ 1 := by
  intro hzero
  have hcoordinate :
      (abelianCoordinate k (baseLetter k 1)
        (Abelianization.of
          (polygonBoundaryEval k (missingInverseEdge k)))).toAdd = 1 := by
    rw [abelianCoordinate_polygonWord, missingInverseEdge_nonzero]
  rw [hzero] at hcoordinate
  simp at hcoordinate

/-- A single full handle block is invisible to every signed integer
coordinate of the real free group, exactly as in #758. -/
theorem handleBlock_character_zero (k : ℕ)
    (x a b : GenusLetter k) :
    ((exponentCharacter k x)
      (polygonBoundaryEval k (handleBlock k a b))).toAdd = 0 := by
  rw [exponentCharacter_polygonWord,
    signedWordCoefficient_handleBlock]

/-- But the first handle's true noncommutative FreeGroup value is
NONIDENTITY: an explicit Heisenberg homomorphism maps it to central
unit Z. This witnesses strict information loss under abelianization. -/
theorem firstHandleBlock_not_one (k : ℕ) :
    polygonBoundaryEval k
      (handleBlock k (baseLetter k 0) (baseLetter k 1)) ≠ 1 := by
  have hImage :
      (FreeGroup.lift (heisenbergLetter k))
        (polygonBoundaryEval k
          (handleBlock k (baseLetter k 0) (baseLetter k 1))) =
        IntegralHeisenberg.Z := by
    rw [handleBlock_eval, map_wordCommutator]
    simp only [FreeGroup.lift_apply_of]
    simpa [baseLetter, heisenbergLetter] using
      IntegralHeisenberg.comm_X_Y
  intro heq
  have hZ : (1 : IntegralHeisenberg) = IntegralHeisenberg.Z := by
    simpa [heq] using hImage
  exact IntegralHeisenberg.Z_ne_one hZ.symm

/-- The same first handle block is nevertheless killed by actual
Mathlib Abelianization.of, not only by its coordinate projections. -/
theorem firstHandleBlock_abelianization_eq_one (k : ℕ) :
    (Abelianization.of
      (polygonBoundaryEval k
        (handleBlock k (baseLetter k 0) (baseLetter k 1))) :
      Abelianization (FreeGroup (GenusLetter k))) = 1 := by
  rw [handleBlock_eval]
  exact abelianization_wordCommutator_zero k _ _

/-- A genuine kernel witness: the original free-group first handle
commutator has trivial abelianization but is a NONTRIVIAL group
element, proved using the same Heisenberg representation. -/
theorem firstHandleBlock_in_kernel_nontrivial (k : ℕ) :
    polygonBoundaryEval k
        (handleBlock k (baseLetter k 0) (baseLetter k 1)) ≠ 1 ∧
      (Abelianization.of
        (polygonBoundaryEval k
          (handleBlock k (baseLetter k 0) (baseLetter k 1))) :
        Abelianization (FreeGroup (GenusLetter k))) = 1 :=
  ⟨firstHandleBlock_not_one k,
    firstHandleBlock_abelianization_eq_one k⟩

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAbelianizationComparison
