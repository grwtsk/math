module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.BilinearPairing
public import Surface.Core.TypeII.MassPacking
public import Surface.Core.TypeII.SpatialCarrier
import Mathlib.Tactic

/-!
# Coefficient-blind algebraic block cuts

An analytic recursion only needs a finite partition of the left and right
factor indices and the resulting exact block/cross-matrix decomposition.  It
does not need every cut to arise from a topological two-sphere.

This module therefore defines the algebraic cut first.  Its child matrices
and cross matrix are derived from the partition, so exact decomposition is a
theorem rather than a certificate field.  `SpatialNeckRealization` is an
optional adapter carrying geometric data and never replaces the matrix
identity.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- A finite coefficient-blind partition used for one algebraic recursion
step.  No coefficient vector occurs in this structure. -/
structure TypeIIBlockCut
    (Left Right : Type*) [Fintype Left] [Fintype Right] where
  Child : Type
  childFintype : Fintype Child
  childDecidableEq : DecidableEq Child
  leftChild : Left → Child
  rightChild : Right → Child
  parentComplexity : ℕ
  childComplexity : Child → ℕ
  complexityDecrease : ∀ child, childComplexity child < parentComplexity

attribute [instance] TypeIIBlockCut.childFintype
attribute [instance] TypeIIBlockCut.childDecidableEq

/-- Matrix contribution whose two indices belong to the same named child. -/
@[expose]
def TypeIIBlockCut.childMatrix
    {Left Right : Type*} [Fintype Left] [Fintype Right]
    (cut : TypeIIBlockCut Left Right) (child : cut.Child)
    (matrix : Matrix Left Right ℂ) : Matrix Left Right ℂ :=
  fun left right ↦
    if cut.leftChild left = child ∧ cut.rightChild right = child then
      matrix left right
    else 0

/-- Sum of all matched child blocks. -/
@[expose]
def TypeIIBlockCut.blockDiagonal
    {Left Right : Type*} [Fintype Left] [Fintype Right]
    (cut : TypeIIBlockCut Left Right)
    (matrix : Matrix Left Right ℂ) : Matrix Left Right ℂ :=
  ∑ child : cut.Child, cut.childMatrix child matrix

/-- Every interaction not assigned to a matched child block. -/
@[expose]
def TypeIIBlockCut.crossMatrix
    {Left Right : Type*} [Fintype Left] [Fintype Right]
    (cut : TypeIIBlockCut Left Right)
    (matrix : Matrix Left Right ℂ) : Matrix Left Right ℂ :=
  matrix - cut.blockDiagonal matrix

/-- Exact algebraic surgery identity. -/
@[surface_novel, surface_published]
theorem TypeIIBlockCut.blockDiagonal_add_cross
    {Left Right : Type*} [Fintype Left] [Fintype Right]
    (cut : TypeIIBlockCut Left Right)
    (matrix : Matrix Left Right ℂ) :
    cut.blockDiagonal matrix + cut.crossMatrix matrix = matrix := by
  simp [TypeIIBlockCut.crossMatrix]

/-- The partition underlying a cut, reused by coefficient-mass packing. -/
@[expose]
def TypeIIBlockCut.coefficientPartition
    {Left Right : Type*} [Fintype Left] [Fintype Right]
    (cut : TypeIIBlockCut Left Right) :
    MatchedCoefficientPartition cut.Child Left Right where
  leftBlock := cut.leftChild
  rightBlock := cut.rightChild

/-- Child coefficient masses pack below the parent mass for every algebraic
cut, independently of any spatial realization. -/
@[surface_novel, surface_published]
theorem TypeIIBlockCut.sum_childMass_le_parent
    {Left Right : Type*} [Fintype Left] [Fintype Right]
    (cut : TypeIIBlockCut Left Right)
    (left : EuclideanSpace ℂ Left) (right : EuclideanSpace ℂ Right) :
    (∑ child : cut.Child,
        (cut.coefficientPartition).childMass left right child) ≤
      ‖left‖ * ‖right‖ := by
  exact (cut.coefficientPartition).sum_childMass_le_parent left right

/-- Optional geometric realization of an already-defined algebraic cut.

The side assignment is required to agree with both factor partitions.  No
analytic cross-correlation estimate is stored here. -/
structure SpatialNeckRealization
    {Left Right Atom : Type*}
    [Fintype Left] [Fintype Right] [Fintype Atom] [DecidableEq Atom]
    (cut : TypeIIBlockCut Left Right)
    (carrier : TypeIISpatialCarrier3 Atom)
    (leftAtom : Left → Atom) (rightAtom : Right → Atom) where
  neck : ValidCombinatorialNeck carrier.carrierComplex
  childSide : cut.Child → NeckSide
  leftCarrierSide : ∀ left,
    (carrier.atomCarrier (leftAtom left)).cells ⊆
      (neck.sideCarrier (childSide (cut.leftChild left))).cells
  rightCarrierSide : ∀ right,
    (carrier.atomCarrier (rightAtom right)).cells ⊆
      (neck.sideCarrier (childSide (cut.rightChild right))).cells

end

end Surface.Core.TypeII

