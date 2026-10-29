-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoefficientFreeBlockPacketGeometry.Variant80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CoefficientFreeBlockPacketGeometry.Variant80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/CoefficientBlindPlan.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.BilinearPairing
public import Surface.Core.TypeII.ShellCutoffMatrix
public import Surface.Core.TypeII.SpatialCarrier
import Mathlib.Tactic

/-!
# Coefficient-blind hyperbolic surgery plans

Packet labels, carrier data, interval families, recursion trees, and selected
martingale depths must be fixed before the arithmetic vectors are supplied.
This file enforces that separation at the type level.

`HyperbolicSurgeryPlan.evaluate` only attaches two vectors to an immutable
plan.  Consequently the underlying tree and geometry are definitionally
independent of those vectors.  No correlation estimate is included.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoefficientFreeBlockPacketGeometry.Variant80ba4f82bc62126aefe6d967f3e558c9d3ea663d79331964d017729c2f06da8e

public section

namespace Surface.Core.TypeII

noncomputable section

/-- Finite packet labels and their incidence with the two factor-index sets.
There is deliberately no coefficient field. -/
structure CoefficientFreeBlockPacketGeometry
    {N q : ℕ} (B : TypeIIShellFactorBlock N q) where
  PacketAtom : Type
  packetAtomFintype : Fintype PacketAtom
  packetAtomDecidableEq : DecidableEq PacketAtom
  leftPackets : B.Left → Finset PacketAtom
  rightPackets : B.Right → Finset PacketAtom
  interaction : PacketAtom → PacketAtom → Prop
  interactionDecidable : DecidableRel interaction
  interaction_symm : ∀ left right, interaction left right → interaction right left

attribute [instance]
  CoefficientFreeBlockPacketGeometry.packetAtomFintype
  CoefficientFreeBlockPacketGeometry.packetAtomDecidableEq
  CoefficientFreeBlockPacketGeometry.interactionDecidable

/-- A finite rooted recursion tree carrying only index support and depth. -/
structure CoefficientFreeSurgeryTree
    {N q : ℕ} (B : TypeIIShellFactorBlock N q) where
  Node : Type
  nodeFintype : Fintype Node
  nodeDecidableEq : DecidableEq Node
  root : Node
  parent : Node → Option Node
  depth : Node → ℕ
  root_parent : parent root = none
  root_depth : depth root = 0
  parent_depth : ∀ {node ancestor}, parent node = some ancestor →
    depth node = depth ancestor + 1
  leftSupport : Node → Finset B.Left
  rightSupport : Node → Finset B.Right
  root_leftSupport : leftSupport root = Finset.univ
  root_rightSupport : rightSupport root = Finset.univ
  child_leftSupport : ∀ {node ancestor}, parent node = some ancestor →
    leftSupport node ⊆ leftSupport ancestor
  child_rightSupport : ∀ {node ancestor}, parent node = some ancestor →
    rightSupport node ⊆ rightSupport ancestor

attribute [instance]
  CoefficientFreeSurgeryTree.nodeFintype
  CoefficientFreeSurgeryTree.nodeDecidableEq

/-- Complete finite plan for one shell factor block, chosen before any
coefficient vector. -/
structure HyperbolicSurgeryPlan
    (N q : ℕ) (B : TypeIIShellFactorBlock N q) where
  packetGeometry : CoefficientFreeBlockPacketGeometry B
  spatialCarrier : TypeIISpatialCarrier3 packetGeometry.PacketAtom
  tree : CoefficientFreeSurgeryTree B
  intervalKernel : tree.Node → TypeIIProductDyadicInterval N q →
    Matrix B.Left B.Right ℂ
  root_intervalKernel : ∀ interval,
    intervalKernel tree.root interval =
      typeIIShellIntervalMatrix B interval
  structuredLeftDepth : ℕ
  structuredRightDepth : ℕ

/-- Evaluation attaches arithmetic data without rebuilding the plan. -/
structure EvaluatedSurgeryTree
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) where
  leftCoefficient : B.Left → ℂ
  rightCoefficient : B.Right → ℂ

/-- The geometry/tree visible after evaluation is exactly the original
coefficient-free tree. -/
@[expose]
def EvaluatedSurgeryTree.underlyingTree
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (_evaluated : EvaluatedSurgeryTree plan) :
    CoefficientFreeSurgeryTree B :=
  plan.tree

/-- Attach two vectors to a coefficient-free plan. -/
@[expose]
def HyperbolicSurgeryPlan.evaluate
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B)
    (left : B.Left → ℂ) (right : B.Right → ℂ) :
    EvaluatedSurgeryTree plan where
  leftCoefficient := left
  rightCoefficient := right

/-- Left vector restricted to one predetermined tree node. -/
@[expose]
def EvaluatedSurgeryTree.nodeLeftCoefficient
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node) :
    B.Left → ℂ :=
  fun index ↦
    if index ∈ plan.tree.leftSupport node then
      evaluated.leftCoefficient index
    else 0

/-- Right vector restricted to one predetermined tree node. -/
@[expose]
def EvaluatedSurgeryTree.nodeRightCoefficient
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node) :
    B.Right → ℂ :=
  fun index ↦
    if index ∈ plan.tree.rightSupport node then
      evaluated.rightCoefficient index
    else 0

/-- Euclidean left vector at one node. -/
@[expose]
def EvaluatedSurgeryTree.nodeLeftVector
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node) :
    EuclideanSpace ℂ B.Left :=
  WithLp.toLp 2 (evaluated.nodeLeftCoefficient node)

/-- Euclidean right vector at one node. -/
@[expose]
def EvaluatedSurgeryTree.nodeRightVector
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node) :
    EuclideanSpace ℂ B.Right :=
  WithLp.toLp 2 (evaluated.nodeRightCoefficient node)

/-- Product coefficient mass at one node. -/
@[expose]
def EvaluatedSurgeryTree.nodeMass
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node) : ℝ :=
  ‖evaluated.nodeLeftVector node‖ * ‖evaluated.nodeRightVector node‖

/-- Coefficient-specific correlation obtained only after evaluating the
coefficient-free kernel. -/
@[expose]
def EvaluatedSurgeryTree.nodeIntervalCorrelation
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (interval : TypeIIProductDyadicInterval N q) : ℂ :=
  bilinearMatrixPairing
    (evaluated.nodeLeftCoefficient node)
    (plan.intervalKernel node interval)
    (evaluated.nodeRightCoefficient node)

/-- Changing the arithmetic vectors cannot change the planned tree. -/
@[surface_novel, surface_published]
theorem surgeryPlan_independent_of_coefficients
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B)
    (left₁ left₂ : B.Left → ℂ) (right₁ right₂ : B.Right → ℂ) :
    (plan.evaluate left₁ right₁).underlyingTree =
      (plan.evaluate left₂ right₂).underlyingTree := by
  rfl

/-- The interval family of a plan is derived from its scale parameters rather
than stored as selectable data. -/
@[expose]
def HyperbolicSurgeryPlan.intervalFamily
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (_plan : HyperbolicSurgeryPlan N q B) :
    Finset (TypeIIProductDyadicInterval N q) :=
  typeIIProductDyadicIntervals N q

@[surface_novel, surface_published]
theorem surgeryPlan_intervalFamily_fixed
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) :
    plan.intervalFamily = typeIIProductDyadicIntervals N q := by
  rfl

/-- At the root, evaluation of the coefficient-blind plan is exactly the
literal shell-interval pairing.  This prevents a plan from proving estimates
for an unrelated kernel family. -/
@[surface_novel, surface_published]
theorem evaluatedRootIntervalCorrelation_eq_shellPairing
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B)
    (left : B.Left → ℂ) (right : B.Right → ℂ)
    (interval : TypeIIProductDyadicInterval N q) :
    (plan.evaluate left right).nodeIntervalCorrelation plan.tree.root interval =
      bilinearMatrixPairing left
        (typeIIShellIntervalMatrix B interval) right := by
  have hleft :
      (plan.evaluate left right).nodeLeftCoefficient plan.tree.root = left := by
    funext index
    unfold EvaluatedSurgeryTree.nodeLeftCoefficient
    rw [plan.tree.root_leftSupport]
    simp [HyperbolicSurgeryPlan.evaluate]
  have hright :
      (plan.evaluate left right).nodeRightCoefficient plan.tree.root = right := by
    funext index
    unfold EvaluatedSurgeryTree.nodeRightCoefficient
    rw [plan.tree.root_rightSupport]
    simp [HyperbolicSurgeryPlan.evaluate]
  unfold EvaluatedSurgeryTree.nodeIntervalCorrelation
  rw [hleft, hright, plan.root_intervalKernel]

end

end Surface.Core.TypeII
