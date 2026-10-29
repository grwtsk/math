module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.MassPacking
import Mathlib.Tactic

/-!
# Levelwise coefficient-mass packing

At a fixed recursion depth the active left supports and active right supports
must each form a partition.  Encoding those two partitions by owner maps lets
the finite Cauchy--Schwarz theorem from `MassPacking` apply at every depth.

This file contains only coefficient-energy bookkeeping.  It does not assert
a local square estimate or a bound on tree depth.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- Matched partitions at every depth.  The node family and owner maps are
coefficient-blind. -/
structure LevelwiseCoefficientPartition
    (Depth Left Right : Type*) [Fintype Depth]
    [Fintype Left] [Fintype Right] where
  Node : Depth → Type
  nodeFintype : ∀ depth, Fintype (Node depth)
  nodeDecidableEq : ∀ depth, DecidableEq (Node depth)
  leftOwner : ∀ depth, Left → Node depth
  rightOwner : ∀ depth, Right → Node depth

/-- Matched partition at one fixed depth. -/
@[expose]
def LevelwiseCoefficientPartition.atDepth
    {Depth Left Right : Type*} [Fintype Depth]
    [Fintype Left] [Fintype Right]
    (partition : LevelwiseCoefficientPartition Depth Left Right)
    (depth : Depth) :
    letI := partition.nodeFintype depth
    letI := partition.nodeDecidableEq depth
    MatchedCoefficientPartition (partition.Node depth) Left Right := by
  letI := partition.nodeFintype depth
  letI := partition.nodeDecidableEq depth
  exact {
    leftBlock := partition.leftOwner depth
    rightBlock := partition.rightOwner depth }

/-- Product mass of a node at one level. -/
@[expose]
def LevelwiseCoefficientPartition.nodeMass
    {Depth Left Right : Type*} [Fintype Depth]
    [Fintype Left] [Fintype Right]
    (partition : LevelwiseCoefficientPartition Depth Left Right)
    (left : EuclideanSpace ℂ Left) (right : EuclideanSpace ℂ Right)
    (depth : Depth) (node : partition.Node depth) : ℝ :=
  letI := partition.nodeFintype depth
  letI := partition.nodeDecidableEq depth
  (partition.atDepth depth).childMass left right node

/-- At every depth, the sum of active node masses is bounded by the root
coefficient mass. -/
@[surface_novel, surface_published]
theorem LevelwiseCoefficientPartition.sum_nodeMass_le_parent
    {Depth Left Right : Type*} [Fintype Depth]
    [Fintype Left] [Fintype Right]
    (partition : LevelwiseCoefficientPartition Depth Left Right)
    (left : EuclideanSpace ℂ Left) (right : EuclideanSpace ℂ Right)
    (depth : Depth) :
    letI := partition.nodeFintype depth
    letI := partition.nodeDecidableEq depth
    (∑ node : partition.Node depth,
        partition.nodeMass left right depth node) ≤ ‖left‖ * ‖right‖ := by
  letI := partition.nodeFintype depth
  letI := partition.nodeDecidableEq depth
  exact (partition.atDepth depth).sum_childMass_le_parent left right

end

end Surface.Core.TypeII
