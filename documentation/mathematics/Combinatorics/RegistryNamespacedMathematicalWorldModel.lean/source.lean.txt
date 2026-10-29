-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MathematicalWorldModel.Variant85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MathematicalWorldModel.Variant85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/Registry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.ObjectIndex
import DAF.DependencyGraph
import Mathlib.Data.NNReal.Defs

/-!
# Typed finite world-model registry

Canonical mathematical content is immutable inside a model value. Runtime
state has no operation that rewrites object, proposition, assumption, or proof
authority registries. Model dependencies use the already checked finite
`DAF.DependencyGraph` implementation.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MathematicalWorldModel.Variant85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed

universe u

namespace Surface.ContinuousAssurance.WorldModel

/-- One finite, versioned mathematical world model. -/
structure MathematicalWorldModel where
  identity : WorldModelVersionId
  owner : Project

  Domain : Type
  State : Type
  LocalContext : Type

  vocabulary : Vocabulary
  declarationNamespace : DeclarationNamespace
  objects : FiniteRegistry MathematicalObjectRecord
  propositions : FiniteRegistry PropositionRecord
  assumptions : FiniteRegistry AssumptionRecord
  proofAuthorities : FiniteRegistry ProofAuthorityRecord
  examples : FiniteRegistry ExampleRecord
  counterexamples : FiniteRegistry CounterexampleRecord
  implementationRefinements : FiniteRegistry ImplementationRefinementRecord
  openObligations : FiniteRegistry ObligationRecord

  semanticDependencies : List WorldModelId
  trustedBaseClosure : TrustedBaseClosure
  localState : State
  stabilityFunctional : State → NNReal
  inconsistencyFunctional : State → NNReal

  sourceAuthority : AuthorityClass
  observationAuthority : AuthorityClass
  assuranceLevel : AssuranceLevel

/-- A finite graph-indexed registry of world-model versions. -/
structure WorldModelRegistry where
  dependencyGraph : DAF.DependencyGraph
  model : dependencyGraph.ProjectId → MathematicalWorldModel
  identities_unique : Function.Injective fun id ↦ (model id).identity
  registryVersion : RegistryVersionId
  deprecated : Finset dependencyGraph.ProjectId
  supersedes : dependencyGraph.ProjectId → Option dependencyGraph.ProjectId
  supersessionRank : dependencyGraph.ProjectId → Nat
  supersession_decreases :
    ∀ {new old}, supersedes new = some old →
      supersessionRank old < supersessionRank new
  semanticForks : List (WorldModelVersionId × WorldModelVersionId)
  expectedSourceDigest : dependencyGraph.ProjectId → ArtifactIdentity
  sourceDigest_valid :
    ∀ id, (model id).identity.sourceDigest = expectedSourceDigest id

namespace WorldModelRegistry

/-- Finite internal identifier type of a registry. -/
abbrev ModelId (registry : WorldModelRegistry) :=
  registry.dependencyGraph.ProjectId

/-- The uniquely selected version stored for a model slot. -/
def Version (registry : WorldModelRegistry) (id : registry.ModelId) :
    WorldModelVersionId :=
  (registry.model id).identity

/-- Registry lookup as a proposition, avoiding any unverified serializer. -/
def HasVersion
    (registry : WorldModelRegistry)
    (identity : WorldModelVersionId) : Prop :=
  ∃ id, registry.Version id = identity

/-- Model/version identities cannot alias two registry slots. -/
theorem version_slot_unique
    (registry : WorldModelRegistry)
    {left right : registry.ModelId}
    (h : registry.Version left = registry.Version right) :
    left = right :=
  registry.identities_unique h

/-- Every stored model has the expected pinned source digest. -/
theorem stored_source_digest_valid
    (registry : WorldModelRegistry)
    (id : registry.ModelId) :
    (registry.Version id).sourceDigest = registry.expectedSourceDigest id :=
  registry.sourceDigest_valid id

/-- The declared supersession relation is well founded and has no cycle. -/
theorem supersession_wellFounded
    (registry : WorldModelRegistry) :
    WellFounded
      (fun old new ↦ registry.supersedes new = some old) := by
  apply (InvImage.wf registry.supersessionRank wellFounded_lt).mono
  intro old new edge
  exact registry.supersession_decreases edge

/-- No registry model can transitively supersede itself. -/
theorem no_supersession_cycle
    (registry : WorldModelRegistry) (id : registry.ModelId) :
    ¬ Relation.TransGen
      (fun old new ↦ registry.supersedes new = some old) id id :=
  by
    intro cycle
    have path_rank :
        ∀ {old new},
          Relation.TransGen
            (fun prior later ↦ registry.supersedes later = some prior)
            old new →
          registry.supersessionRank old < registry.supersessionRank new := by
      intro old new path
      induction path with
      | single edge => exact registry.supersession_decreases edge
      | tail path edge ih =>
          exact Nat.lt_trans ih (registry.supersession_decreases edge)
    exact Nat.lt_irrefl _ (path_rank cycle)

end WorldModelRegistry

end Surface.ContinuousAssurance.WorldModel
