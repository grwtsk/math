-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.LocalToGlobalCarlesonData.Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.LocalToGlobalCarlesonData.Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/LocalToGlobalCarleson.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.Tactic

/-!
# Finite local-to-global Carleson assembly

This module proves the coefficient-blind bookkeeping theorem behind a
surgery-tree square estimate.  Nodes carry vectors indexed by the fixed
dyadic interval family and a nonnegative coefficient mass.  A local vector
bound and one mass-packing bound at every depth imply a global vector bound
with only the number of depths as loss.

The proof is finite Minkowski plus levelwise mass packing.  It contains no
conductor-three arithmetic and no local analytic estimate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.LocalToGlobalCarlesonData.Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- Coefficient-blind finite node/depth organization for interval-vector
contributions. -/
structure LocalToGlobalCarlesonData where
  Node : Type
  Depth : Type
  Interval : Type
  nodeFintype : Fintype Node
  depthFintype : Fintype Depth
  intervalFintype : Fintype Interval
  depthDecidableEq : DecidableEq Depth
  depth : Node → Depth
  contribution : Node → EuclideanSpace ℂ Interval
  mass : Node → ℝ
  mass_nonneg : ∀ node, 0 ≤ mass node

attribute [instance]
  LocalToGlobalCarlesonData.nodeFintype
  LocalToGlobalCarlesonData.depthFintype
  LocalToGlobalCarlesonData.intervalFintype
  LocalToGlobalCarlesonData.depthDecidableEq

/-- Contribution vector of one depth. -/
@[expose]
def LocalToGlobalCarlesonData.levelContribution
    (data : LocalToGlobalCarlesonData) (level : data.Depth) :
    EuclideanSpace ℂ data.Interval :=
  ∑ node : data.Node,
    if data.depth node = level then data.contribution node else 0

/-- Sum of every node contribution. -/
@[expose]
def LocalToGlobalCarlesonData.totalContribution
    (data : LocalToGlobalCarlesonData) : EuclideanSpace ℂ data.Interval :=
  ∑ node : data.Node, data.contribution node

/-- Sum of coefficient masses at one depth. -/
@[expose]
def LocalToGlobalCarlesonData.levelMass
    (data : LocalToGlobalCarlesonData) (level : data.Depth) : ℝ :=
  ∑ node : data.Node,
    if data.depth node = level then data.mass node else 0

/-- Every node is counted at exactly one depth. -/
@[surface_novel, surface_published]
theorem LocalToGlobalCarlesonData.sum_levelContribution
    (data : LocalToGlobalCarlesonData) :
    (∑ level : data.Depth, data.levelContribution level) =
      data.totalContribution := by
  classical
  simp only [LocalToGlobalCarlesonData.levelContribution,
    LocalToGlobalCarlesonData.totalContribution]
  rw [Finset.sum_comm]
  apply Fintype.sum_congr
  intro node
  rw [Finset.sum_eq_single (data.depth node)]
  · simp
  · intro level _ hne
    simp [hne.symm]
  · simp

/-- Local square estimate: every node contribution is bounded by `A` times
its coefficient mass. -/
@[expose]
def LocalCrossSquareEstimate
    (data : LocalToGlobalCarlesonData) (A : ℝ) : Prop :=
  0 ≤ A ∧ ∀ node, ‖data.contribution node‖ ≤ A * data.mass node

/-- Levelwise coefficient-mass packing. -/
@[expose]
def LevelwiseMassPacking
    (data : LocalToGlobalCarlesonData) (rootMass : ℝ) : Prop :=
  0 ≤ rootMass ∧ ∀ level, data.levelMass level ≤ rootMass

/-- One level costs at most `A * rootMass`. -/
@[surface_novel, surface_published]
theorem LocalToGlobalCarlesonData.levelContribution_norm_le
    (data : LocalToGlobalCarlesonData) {A rootMass : ℝ}
    (hLocal : LocalCrossSquareEstimate data A)
    (hPacking : LevelwiseMassPacking data rootMass)
    (level : data.Depth) :
    ‖data.levelContribution level‖ ≤ A * rootMass := by
  classical
  calc
    ‖data.levelContribution level‖ ≤
        ∑ node : data.Node,
          ‖if data.depth node = level then data.contribution node else 0‖ := by
      exact norm_sum_le _ _
    _ = ∑ node : data.Node,
          if data.depth node = level then ‖data.contribution node‖ else 0 := by
      apply Fintype.sum_congr
      intro node
      by_cases hnode : data.depth node = level <;> simp [hnode]
    _ ≤ ∑ node : data.Node,
          if data.depth node = level then A * data.mass node else 0 := by
      apply Finset.sum_le_sum
      intro node _
      by_cases hnode : data.depth node = level
      · simpa [hnode] using hLocal.2 node
      · simp [hnode]
    _ = A * data.levelMass level := by
      simp only [LocalToGlobalCarlesonData.levelMass, Finset.mul_sum]
      apply Fintype.sum_congr
      intro node
      by_cases hnode : data.depth node = level <;> simp [hnode]
    _ ≤ A * rootMass := by
      exact mul_le_mul_of_nonneg_left (hPacking.2 level) hLocal.1

/-- Finite local-to-global Carleson theorem.

When `Depth = Fin (L + 1)`, the cardinality factor is exactly `L + 1`.
All analytic work is isolated in `hLocal`; all tree bookkeeping is isolated
in `hPacking`. -/
@[surface_novel, surface_published]
theorem treeCrossCarleson_of_localSquare
    (data : LocalToGlobalCarlesonData) {A rootMass : ℝ}
    (hLocal : LocalCrossSquareEstimate data A)
    (hPacking : LevelwiseMassPacking data rootMass) :
    ‖data.totalContribution‖ ≤
      (Fintype.card data.Depth : ℝ) * A * rootMass := by
  rw [← data.sum_levelContribution]
  calc
    ‖∑ level : data.Depth, data.levelContribution level‖ ≤
        ∑ _level : data.Depth, A * rootMass := by
      exact norm_sum_le_of_le _ (by
        intro level _
        exact data.levelContribution_norm_le hLocal hPacking level)
    _ = (Fintype.card data.Depth : ℝ) * A * rootMass := by
      simp [mul_assoc]

end

end Surface.Core.TypeII
