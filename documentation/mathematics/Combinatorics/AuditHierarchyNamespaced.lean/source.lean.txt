-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RankedAuditHierarchy.Variant3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RankedAuditHierarchy.Variant3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/AuditHierarchy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.MonoHierarchy
import Mathematics.Projection.PolyHierarchy

/-!
# Proof-safe audit hierarchy

The canonical audit location and the cross-cutting audit semantics are separate
objects.  `RankedAuditHierarchy` strengthens the existing `MonoHierarchy` with
total nonroot parenthood and a rank that strictly decreases toward the root.
`AuditRelationLedger` retains cross-cutting facts in the existing
`PolyHierarchy`; no relation fact is a parent edge constructor.

This module defines mathematical roles only.  It does not prescribe a physical
source-directory hierarchy.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RankedAuditHierarchy.Variant3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1

namespace Mathematics.Projection

universe u

/-- A monohierarchy whose parent relation is explicitly rooted and terminating. -/
structure RankedAuditHierarchy (Node : Type u) where
  projection : MonoHierarchy Node
  rank : Node → Nat
  root_has_no_parent :
    projection.parent projection.root = none
  nonroot_has_parent :
    ∀ node, node ≠ projection.root →
      ∃ parent, projection.parent node = some parent
  parent_lowers_rank :
    ∀ {node parent},
      projection.parent node = some parent →
        rank parent < rank node

namespace RankedAuditHierarchy

variable {Node : Type u}

/-- The oriented edge relation used for canonical navigation. -/
def ParentStep
    (hierarchy : RankedAuditHierarchy Node)
    (parent child : Node) : Prop :=
  hierarchy.projection.parent child = some parent

/-- Every nonroot node has exactly one canonical parent. -/
theorem unique_parent
    (hierarchy : RankedAuditHierarchy Node)
    (node : Node)
    (nonroot : node ≠ hierarchy.projection.root) :
    ∃! parent, hierarchy.ParentStep parent node := by
  rcases hierarchy.nonroot_has_parent node nonroot with
    ⟨parent, parentWitness⟩
  refine ⟨parent, parentWitness, ?_⟩
  intro other otherWitness
  exact Option.some.inj (otherWitness.symm.trans parentWitness)

/-- The root has no canonical parent. -/
theorem root_parent_absent
    (hierarchy : RankedAuditHierarchy Node)
    (parent : Node) :
    ¬ hierarchy.ParentStep parent hierarchy.projection.root := by
  intro parentWitness
  change
    hierarchy.projection.parent hierarchy.projection.root =
      some parent at parentWitness
  rw [hierarchy.root_has_no_parent] at parentWitness
  cases parentWitness

/-- A parent is always strictly closer to the root in the certified rank. -/
theorem parent_rank_lt
    (hierarchy : RankedAuditHierarchy Node)
    {parent child : Node}
    (edge : hierarchy.ParentStep parent child) :
    hierarchy.rank parent < hierarchy.rank child :=
  hierarchy.parent_lowers_rank edge

/-- No node can be its own parent. -/
theorem no_self_parent
    (hierarchy : RankedAuditHierarchy Node)
    (node : Node) :
    ¬ hierarchy.ParentStep node node := by
  intro edge
  exact (Nat.lt_irrefl _)
    (hierarchy.parent_rank_lt edge)

/-- The rank witness makes canonical parent traversal well founded. -/
theorem parent_wellFounded
    (hierarchy : RankedAuditHierarchy Node) :
    WellFounded hierarchy.ParentStep :=
  Subrelation.wf
    (fun edge ↦ hierarchy.parent_rank_lt edge)
    (measure hierarchy.rank).wf

end RankedAuditHierarchy

/-- Semantic classes used only to type audit cross-relations. -/
inductive AuditNodeClass
  | auditableObject
  | goal
  | requirement
  | documentationClaim
  | implementationSurface
  | concern
  | skillProfile
  | reviewer
  | finding
  | workItem
  | evidence
  | rendering
  | history
  deriving DecidableEq, Repr, Fintype

/-- The fixed cross-cutting relation vocabulary from the audit specification. -/
inductive AuditRelationKind
  | concerns
  | requiresSkill
  | supportsGoal
  | blocksGoal
  | dependsOn
  | implements
  | specifiedBy
  | contradicts
  | duplicates
  | refines
  | generalizes
  | specializes
  | evidencedBy
  | verifiedBy
  | renderedBy
  | ownedBy
  | assignedTo
  | supersedes
  deriving DecidableEq, Repr, Fintype

/-- Fixed domain and codomain typing for every cross-cutting relation. -/
def AuditRelationAdmissible :
    AuditRelationKind → AuditNodeClass → AuditNodeClass → Prop
  | .concerns, .concern, .auditableObject => True
  | .requiresSkill, .concern, .skillProfile => True
  | .supportsGoal, .auditableObject, .goal => True
  | .blocksGoal, .concern, .goal => True
  | .dependsOn, .auditableObject, .auditableObject => True
  | .implements, .implementationSurface, .requirement => True
  | .specifiedBy, .implementationSurface, .documentationClaim => True
  | .contradicts, .finding, .finding => True
  | .duplicates, .finding, .finding => True
  | .refines, .auditableObject, .auditableObject => True
  | .generalizes, .auditableObject, .auditableObject => True
  | .specializes, .auditableObject, .auditableObject => True
  | .evidencedBy, .auditableObject, .evidence => True
  | .verifiedBy, .auditableObject, .evidence => True
  | .renderedBy, .auditableObject, .rendering => True
  | .ownedBy, .auditableObject, .reviewer => True
  | .assignedTo, .workItem, .reviewer => True
  | .supersedes, .auditableObject, .history => True
  | _, _, _ => False

/-- Binary, versioned structural signature for audit cross-relations. -/
def auditRelationSignature : StructuralSignature where
  SortType := AuditNodeClass
  Relation := AuditRelationKind
  sortFintype := inferInstance
  sortDecidableEq := inferInstance
  relationFintype := inferInstance
  relationDecidableEq := inferInstance
  arity := fun _ ↦ 2
  version := 1

/--
The polyhierarchical ledger reuses `PolyHierarchy` directly.  Its element
carrier is related to the canonical node carrier only by an explicit
equivalence, and every admitted binary fact is checked against the fixed
domain/codomain table.
-/
structure AuditRelationLedger (Node : Type u) where
  hierarchy : PolyHierarchy.{u, 0, 0} auditRelationSignature
  nodeEquivalence : hierarchy.Element ≃ Node
  relation_well_typed :
    ∀ authority relation arguments,
      hierarchy.fact authority relation arguments →
        AuditRelationAdmissible relation
          (hierarchy.elementSort
            (arguments ⟨0, by simp [auditRelationSignature]⟩))
          (hierarchy.elementSort
            (arguments ⟨1, by simp [auditRelationSignature]⟩))

/-- Canonical navigation and polyhierarchical semantics share nodes, not edges. -/
structure AuditTopology (Node : Type u) where
  canonical : RankedAuditHierarchy Node
  crossCutting : AuditRelationLedger Node

/-- A canonical-parent witness is a distinct observation class. -/
structure CanonicalParentObservation
    {Node : Type u}
    (topology : AuditTopology Node) where
  parent : Node
  child : Node
  witness : topology.canonical.ParentStep parent child

/-- A typed cross-cutting fact is retained as a polyhierarchy observation. -/
structure CrossCuttingObservation
    {Node : Type u}
    (topology : AuditTopology Node) where
  authority : FactAuthority
  relation : AuditRelationKind
  arguments :
    Fin (auditRelationSignature.arity relation) →
      topology.crossCutting.hierarchy.Element
  witness :
    topology.crossCutting.hierarchy.fact authority relation arguments

/-- The tag prevents a cross-cutting observation from silently becoming parenthood. -/
inductive AuditEdgeObservation
    {Node : Type u}
    (topology : AuditTopology Node)
  | canonical :
      CanonicalParentObservation topology →
        AuditEdgeObservation topology
  | crossCutting :
      CrossCuttingObservation topology →
        AuditEdgeObservation topology

/-- Cross-cutting and canonical-parent constructors are disjoint. -/
theorem cross_cutting_is_not_canonical
    {Node : Type u}
    {topology : AuditTopology Node}
    (relation : CrossCuttingObservation topology)
    (parent : CanonicalParentObservation topology) :
    AuditEdgeObservation.crossCutting relation ≠
      AuditEdgeObservation.canonical parent := by
  intro equality
  cases equality

end Mathematics.Projection
