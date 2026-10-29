import Mathlib.CategoryTheory.Sites.Sheaf
import Think.SourceTree.Legacy.Compression.MathlibGrothendieckTopologyInstance

set_option autoImplicit false

namespace Think.Compression.GrothendieckTopology

open Think.Compression.BitMatrixSite
open CategoryTheory

universe u v

/-
Mathlib sheaf-category entrance boundary for the finite bit-matrix site.

The previous layer constructed an actual Mathlib `GrothendieckTopology` on
`SiteObject M`. This file names the corresponding Mathlib presheaf and sheaf
interfaces, but keeps the construction as an entrance boundary: it does not
claim sheafification, a Lawvere-Tierney topology, an essential geometric
morphism, a topos, or theorem promotion.
-/

/-- Mathlib presheaves over the finite bit-matrix site. -/
abbrev BitMatrixPresheaf
    (M : BitMatrix) (A : Type u) [Category.{v} A] :=
  (SiteObject M)ᵒᵖ ⥤ A

/-- The Mathlib sheaf condition over `coverGeneratedTopology M`. -/
abbrev BitMatrixSheafCondition
    (M : BitMatrix) {A : Type u} [Category.{v} A]
    (P : BitMatrixPresheaf M A) : Prop :=
  Presheaf.IsSheaf (coverGeneratedTopology M) P

/-- The Mathlib sheaf-category type over the finite bit-matrix site. -/
abbrev BitMatrixSheafCategory
    (M : BitMatrix) (A : Type u) [Category.{v} A] :=
  CategoryTheory.Sheaf (coverGeneratedTopology M) A

theorem bitmatrix_sheaf_condition_is_mathlib_isSheaf
    (M : BitMatrix) {A : Type u} [Category.{v} A]
    (P : BitMatrixPresheaf M A) :
    BitMatrixSheafCondition M P =
      Presheaf.IsSheaf (coverGeneratedTopology M) P := by
  rfl

theorem bitmatrix_sheaf_category_is_mathlib_sheaf
    (M : BitMatrix) (A : Type u) [Category.{v} A] :
    BitMatrixSheafCategory M A =
      CategoryTheory.Sheaf (coverGeneratedTopology M) A := by
  rfl

structure MathlibSheafCategoryBoundarySurface (M : BitMatrix) where
  hasPresheafInterface : Bool
  hasSheafConditionInterface : Bool
  hasSheafCategoryEntrance : Bool
  constructedSheafification : Bool
  lawvereTierneyTopologyClaim : Bool
  essentialGeometricMorphismClaim : Bool
  toposClaim : Bool
  theoremPromotionClaim : Bool
deriving Repr, DecidableEq

def defaultMathlibSheafCategoryBoundarySurface
    (M : BitMatrix) :
    MathlibSheafCategoryBoundarySurface M :=
  { hasPresheafInterface := true
    hasSheafConditionInterface := true
    hasSheafCategoryEntrance := true
    constructedSheafification := false
    lawvereTierneyTopologyClaim := false
    essentialGeometricMorphismClaim := false
    toposClaim := false
    theoremPromotionClaim := false }

theorem default_mathlib_sheaf_boundary_has_presheaf_interface
    (M : BitMatrix) :
    (defaultMathlibSheafCategoryBoundarySurface M).hasPresheafInterface =
      true := by
  rfl

theorem default_mathlib_sheaf_boundary_has_sheaf_condition_interface
    (M : BitMatrix) :
    (defaultMathlibSheafCategoryBoundarySurface M).hasSheafConditionInterface =
      true := by
  rfl

theorem default_mathlib_sheaf_boundary_has_sheaf_category_entrance
    (M : BitMatrix) :
    (defaultMathlibSheafCategoryBoundarySurface M).hasSheafCategoryEntrance =
      true := by
  rfl

theorem mathlib_sheaf_boundary_does_not_construct_sheafification
    (M : BitMatrix) :
    (defaultMathlibSheafCategoryBoundarySurface M).constructedSheafification =
      false := by
  rfl

theorem mathlib_sheaf_boundary_denies_lawvere_tierney
    (M : BitMatrix) :
    (defaultMathlibSheafCategoryBoundarySurface M).lawvereTierneyTopologyClaim =
      false := by
  rfl

theorem mathlib_sheaf_boundary_denies_essential_geometric_morphism
    (M : BitMatrix) :
    (defaultMathlibSheafCategoryBoundarySurface M).essentialGeometricMorphismClaim =
      false := by
  rfl

theorem mathlib_sheaf_boundary_denies_topos
    (M : BitMatrix) :
    (defaultMathlibSheafCategoryBoundarySurface M).toposClaim = false := by
  rfl

theorem mathlib_sheaf_boundary_denies_theorem_promotion
    (M : BitMatrix) :
    (defaultMathlibSheafCategoryBoundarySurface M).theoremPromotionClaim =
      false := by
  rfl

end Think.Compression.GrothendieckTopology
