-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveWeights.Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PositiveWeights.Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/Metric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.Bitfield
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.Linarith

/-!
# Separated weighted-Hamming geometry

The concrete metric uses strictly positive real weights.  A separate generic
pseudometric record exposes the zero-distance quotient boundary rather than
silently identifying zero distance with equality.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveWeights.Variantc9f49594a570ab56c08a96af58cc5041741c9d0e1abc8b3d690040c4b3a0e9fc

namespace Mathematics.SpectralClosure

structure PositiveWeights (width : Nat) where
  weight : Fin width → ℝ
  positive : ∀ coordinate, 0 < weight coordinate

def weightedHamming
    {width : Nat}
    (weights : PositiveWeights width)
    (left right : Bitfield width) : ℝ :=
  ∑ coordinate,
    if left coordinate = right coordinate
      then 0
      else weights.weight coordinate

theorem weightedHamming_nonnegative
    {width : Nat}
    (weights : PositiveWeights width)
    (left right : Bitfield width) :
    0 ≤ weightedHamming weights left right := by
  unfold weightedHamming
  apply Finset.sum_nonneg
  intro coordinate _
  split
  · exact le_rfl
  · exact (weights.positive coordinate).le

@[simp] theorem weightedHamming_self
    {width : Nat}
    (weights : PositiveWeights width)
    (field : Bitfield width) :
    weightedHamming weights field field = 0 := by
  simp [weightedHamming]

theorem weightedHamming_symmetric
    {width : Nat}
    (weights : PositiveWeights width)
    (left right : Bitfield width) :
    weightedHamming weights left right =
      weightedHamming weights right left := by
  unfold weightedHamming
  apply Finset.sum_congr rfl
  intro coordinate _
  by_cases same : left coordinate = right coordinate
  · rw [if_pos same, if_pos same.symm]
  · have reverse : right coordinate ≠ left coordinate := Ne.symm same
    rw [if_neg same, if_neg reverse]

theorem weightedHamming_triangle
    {width : Nat}
    (weights : PositiveWeights width)
    (left middle right : Bitfield width) :
    weightedHamming weights left right ≤
      weightedHamming weights left middle +
      weightedHamming weights middle right := by
  unfold weightedHamming
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_le_sum
  intro coordinate _
  have weightNonnegative : 0 ≤ weights.weight coordinate :=
    (weights.positive coordinate).le
  cases left coordinate <;>
    cases middle coordinate <;>
    cases right coordinate <;>
    simp [weightNonnegative]

theorem weightedHamming_separates
    {width : Nat}
    (weights : PositiveWeights width)
    (left right : Bitfield width)
    (zeroDistance : weightedHamming weights left right = 0) :
    left = right := by
  funext coordinate
  by_contra different
  have selectedPositive :
      0 <
        (if left coordinate = right coordinate
          then 0
          else weights.weight coordinate) := by
    simp [different, weights.positive coordinate]
  have selectedBound :
      (if left coordinate = right coordinate
          then 0
          else weights.weight coordinate) ≤
        weightedHamming weights left right := by
    unfold weightedHamming
    have everyTermNonnegative :
        ∀ candidate ∈ (Finset.univ : Finset (Fin width)),
          0 ≤
            (if left candidate = right candidate
              then 0
              else weights.weight candidate) := by
      intro candidate _
      split
      · exact le_rfl
      · exact (weights.positive candidate).le
    simpa using
      (Finset.single_le_sum everyTermNonnegative
        (Finset.mem_univ coordinate))
  rw [zeroDistance] at selectedBound
  linarith

structure PseudometricData (X : Type) where
  distance : X → X → ℝ
  nonnegative : ∀ left right, 0 ≤ distance left right
  selfZero : ∀ point, distance point point = 0
  symmetric : ∀ left right, distance left right = distance right left
  triangle :
    ∀ left middle right,
      distance left right ≤
        distance left middle + distance middle right

def ZeroDistance
    {X : Type}
    (metric : PseudometricData X)
    (left right : X) : Prop :=
  metric.distance left right = 0

theorem zeroDistance_equivalence
    {X : Type}
    (metric : PseudometricData X) :
    Equivalence (ZeroDistance metric) where
  refl point := metric.selfZero point
  symm relation := by
    rw [ZeroDistance, metric.symmetric]
    exact relation
  trans := by
    intro left middle right leftMiddle middleRight
    have upper := metric.triangle left middle right
    rw [leftMiddle, middleRight] at upper
    exact le_antisymm (by simpa using upper) (metric.nonnegative left right)

def zeroDistanceSetoid
    {X : Type}
    (metric : PseudometricData X) :
    Setoid X where
  r := ZeroDistance metric
  iseqv := zeroDistance_equivalence metric

abbrev SeparatedQuotient
    {X : Type}
    (metric : PseudometricData X) :=
  Quotient (zeroDistanceSetoid metric)

theorem quotient_identifies_exactly_zero_distance
    {X : Type}
    (metric : PseudometricData X)
    (left right : X) :
    Quotient.mk (zeroDistanceSetoid metric) left =
        Quotient.mk (zeroDistanceSetoid metric) right ↔
      ZeroDistance metric left right :=
  Quotient.eq

def Separated
    {X : Type}
    (metric : PseudometricData X) : Prop :=
  ∀ left right, ZeroDistance metric left right → left = right

end Mathematics.SpectralClosure
