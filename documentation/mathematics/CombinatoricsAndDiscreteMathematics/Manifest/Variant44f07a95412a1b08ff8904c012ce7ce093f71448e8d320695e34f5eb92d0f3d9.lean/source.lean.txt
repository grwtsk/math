-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoremCellDescriptor.Variantd80a6543f00995fb86a33e7266cfa51bc5ec6b8bb135cdc4dacc049df1c73b8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d80a6543f00995fb86a33e7266cfa51bc5ec6b8bb135cdc4dacc049df1c73b8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TheoremCellDescriptor.Variantd80a6543f00995fb86a33e7266cfa51bc5ec6b8bb135cdc4dacc049df1c73b8b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d80a6543f00995fb86a33e7266cfa51bc5ec6b8bb135cdc4dacc049df1c73b8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/39345ad947523e3af478efb266789a4935c0776ae7063c64b814ded0a6dc79de/workspace/Surface/DAF/Universe/Manifest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Universe.Node

/-!
# Canonical universe manifest
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoremCellDescriptor.Variantd80a6543f00995fb86a33e7266cfa51bc5ec6b8bb135cdc4dacc049df1c73b8b

namespace DAF.Universe

/-- A theorem-cell descriptor stored in the generated manifest. -/
structure TheoremCellDescriptor where
  id : TheoremCellId
  theoremNode : TerrainNodeId
  statementDigest : Digest
  dependencyDigest : Digest
  requiredAxisCount : Nat
  deriving DecidableEq, Repr

/-- A fold descriptor pins both its source and target terrain identities. -/
structure FoldDescriptor where
  id : FoldId
  sourceCell : TerrainCellId
  targetCell : TerrainCellId
  sourceDigest : Digest
  targetDigest : Digest
  reversible : Bool
  deriving DecidableEq, Repr

/-- All node references made by edges, cells, theorem cells, folds, and runtime
bindings resolve in the same immutable manifest. -/
def ReferencesClosed
    (nodes : Finset TerrainNode)
    (edges : Finset TerrainEdgeDescriptor)
    (cells : Finset TerrainCellDescriptor)
    (theoremCells : Finset TheoremCellDescriptor)
    (folds : Finset FoldDescriptor)
    (runtimeBindings : Finset RuntimeBindingDescriptor) : Prop :=
  (∀ edge ∈ edges,
      (∃ node ∈ nodes, node.id = edge.source) ∧
      ∃ node ∈ nodes, node.id = edge.target) ∧
  (∀ cell ∈ cells, ∀ edgeId ∈ cell.boundaryEdges,
      ∃ edge ∈ edges, edge.id = edgeId) ∧
  (∀ cell ∈ theoremCells,
      ∃ node ∈ nodes, node.id = cell.theoremNode) ∧
  (∀ fold ∈ folds,
      (∃ cell ∈ cells, cell.id = fold.sourceCell) ∧
      ∃ cell ∈ cells, cell.id = fold.targetCell) ∧
  (∀ binding ∈ runtimeBindings,
      ∃ node ∈ nodes, node.id = binding.terrainNode)

/-- No two manifest nodes share a stable identifier. -/
def NodeIdentityInjective (nodes : Finset TerrainNode) : Prop :=
  ∀ left ∈ nodes, ∀ right ∈ nodes, left.id = right.id → left = right

/-- Immutable typed projection of the generated repository universe. -/
structure UniverseManifest where
  schemaVersion : Nat
  sourceTreeDigest : Digest
  toolchainDigest : Digest
  snapshotId : SnapshotId
  nodes : Finset TerrainNode
  edges : Finset TerrainEdgeDescriptor
  higherCells : Finset TerrainCellDescriptor
  theoremCells : Finset TheoremCellDescriptor
  foldData : Finset FoldDescriptor
  runtimeBindings : Finset RuntimeBindingDescriptor
  externalAuthorities : Finset ExternalAuthorityDescriptor
  closedUnderReferences :
    ReferencesClosed nodes edges higherCells theoremCells foldData runtimeBindings
  identityInjective : NodeIdentityInjective nodes

namespace UniverseManifest

def HasNode (manifest : UniverseManifest) (id : TerrainNodeId) : Prop :=
  ∃ node ∈ manifest.nodes, node.id = id

def HasEdge (manifest : UniverseManifest) (id : TerrainEdgeId) : Prop :=
  ∃ edge ∈ manifest.edges, edge.id = id

def HasCell (manifest : UniverseManifest) (id : TerrainCellId) : Prop :=
  ∃ cell ∈ manifest.higherCells, cell.id = id

theorem edge_source_resolves
    (manifest : UniverseManifest)
    {edge : TerrainEdgeDescriptor}
    (membership : edge ∈ manifest.edges) :
    manifest.HasNode edge.source :=
  (manifest.closedUnderReferences.1 edge membership).1

theorem edge_target_resolves
    (manifest : UniverseManifest)
    {edge : TerrainEdgeDescriptor}
    (membership : edge ∈ manifest.edges) :
    manifest.HasNode edge.target :=
  (manifest.closedUnderReferences.1 edge membership).2

theorem node_unique
    (manifest : UniverseManifest)
    {left right : TerrainNode}
    (leftMem : left ∈ manifest.nodes)
    (rightMem : right ∈ manifest.nodes)
    (sameId : left.id = right.id) :
    left = right :=
  manifest.identityInjective left leftMem right rightMem sameId

end UniverseManifest

end DAF.Universe
