-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EntityKind.Variant412b4b312bb9b3dcaa2e0bdd03a9d1bda393791a18f82cf2a84e2eaff6372b74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"412b4b312bb9b3dcaa2e0bdd03a9d1bda393791a18f82cf2a84e2eaff6372b74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EntityKind.Variant412b4b312bb9b3dcaa2e0bdd03a9d1bda393791a18f82cf2a84e2eaff6372b74","mathematical_subject":"Computation.DataStructures","original_sha256":"412b4b312bb9b3dcaa2e0bdd03a9d1bda393791a18f82cf2a84e2eaff6372b74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Inventory/CompiledInventory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import MathDiscovery.Concept.RuntimeBinding

/-!
# Compiled public-entity inventory boundary

This module defines the typed snapshot accepted from a downstream Lean
environment exporter.  It does not pretend to discover declarations itself.
Source locations are provenance; stable entity identity is supplied separately.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EntityKind.Variant412b4b312bb9b3dcaa2e0bdd03a9d1bda393791a18f82cf2a84e2eaff6372b74

namespace MathDiscovery.Inventory

open MathDiscovery

/-- Public compiled entity kinds relevant to concept assignment. -/
inductive EntityKind
  | axiom
  | definition
  | theorem
  | opaqueDefinition
  | structure
  | constructor
  | recursor
  | instance
  | class
  | inductiveType
  | projection
  | syntax
  | macro
  | command
  | schema
  | runtimeOperation
  | test
  | documentation
  | generatedSupport
  | external
  deriving DecidableEq, Repr, Inhabited

/-- One normalized public entity extracted from a compiled environment. -/
structure CompiledEntity where
  id : EntityId
  fullyQualifiedName : Lean.Name
  kind : EntityKind
  normalizedSignature : NormalizedSignature
  typeDigest : Digest
  sourceDigest : Digest
  dependencyDigest : Digest
  bodyDigest : Option Digest
  axiomClosure : Finset Lean.Name
  typeDependencies : Finset Lean.Name
  valueDependencies : Finset Lean.Name
  directDependencies : Finset Lean.Name
  hasCompiledValue : Bool
  sourceLocation : Option SourceLocation
  isPublic : Bool
  generatedParent : Option EntityId
  semanticProfile : Concept.EntityProfile
  deriving DecidableEq

/-- Immutable compiled-project snapshot. -/
structure Snapshot where
  id : SnapshotId
  projectId : ProjectId
  leanVersion : String
  environmentDigest : Digest
  rootModules : Array Lean.Name
  entities : List CompiledEntity

namespace Snapshot

/-- Public entities in source-independent discovery order. -/
def publicEntities (snapshot : Snapshot) : List CompiledEntity :=
  snapshot.entities.filter (·.isPublic)

/-- Stable entity identifiers must be unique in one snapshot. -/
def UniqueEntityIds (snapshot : Snapshot) : Prop :=
  (snapshot.entities.map (·.id)).Nodup

/-- Fully-qualified compiled names must be unique in one Lean environment. -/
def UniqueNames (snapshot : Snapshot) : Prop :=
  (snapshot.entities.map (·.fullyQualifiedName)).Nodup

/-- Generated entities expose an exact parent identifier. -/
def GeneratedParentsPresent (snapshot : Snapshot) : Prop :=
  ∀ entity ∈ snapshot.entities,
    entity.kind = .generatedSupport →
      ∃ parentId, entity.generatedParent = some parentId ∧
        parentId ∈ snapshot.entities.map (·.id)

end Snapshot

end MathDiscovery.Inventory
