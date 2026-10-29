-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Version.Variant3a4c65ecfb5be33b3db58cbf2edb8a8949760a57aa72759a102d4e73b75041ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a4c65ecfb5be33b3db58cbf2edb8a8949760a57aa72759a102d4e73b75041ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Version.Variant3a4c65ecfb5be33b3db58cbf2edb8a8949760a57aa72759a102d4e73b75041ba","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3a4c65ecfb5be33b3db58cbf2edb8a8949760a57aa72759a102d4e73b75041ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Manifest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.DependencyGraph
import Mathlib.Data.Finset.Card

/-!
# Typed project manifests

These records describe the *declared* project and build interface.  Fingerprints
are opaque byte sequences: their inequality is a usable change signal, but this
module intentionally provides no theorem turning equality of ordinary hashes
into semantic equivalence of Lean environments.

Names, versions, project identifiers, and dependency policies have dedicated
types rather than proof-relevant ad-hoc strings.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Version.Variant3a4c65ecfb5be33b3db58cbf2edb8a8949760a57aa72759a102d4e73b75041ba

universe u

namespace DAF

/-- A semantic version represented by its three numeric components. -/
structure Version where
  major : Nat
  minor : Nat
  patch : Nat
  deriving DecidableEq, Repr

namespace Version

/-- The initial version. -/
def zero : Version := ⟨0, 0, 0⟩

end Version

/-- An opaque fingerprint.  Its interpretation belongs to manifest generation. -/
structure Fingerprint where
  bytes : ByteArray
  deriving DecidableEq

namespace Fingerprint

/-- Fingerprints differ as byte sequences.  No semantic conclusion is bundled. -/
def Changed (old new : Fingerprint) : Prop := old ≠ new

instance (old new : Fingerprint) : Decidable (Changed old new) :=
  inferInstanceAs (Decidable (old ≠ new))

end Fingerprint

/--
An enforceable module-ownership declaration.  `aggregateModules` are intended to
contain imports only, and `testModules` are excluded from production imports by
an external checker or by a separately certified syntax model.
-/
structure OwnershipPolicy where
  ownsNamespaces : Finset Lean.Name
  allowedImports : Finset Lean.Name
  forbiddenImports : Finset Lean.Name
  aggregateModules : Finset Lean.Name
  testModules : Finset Lean.Name
  deriving DecidableEq

namespace OwnershipPolicy

/-- A direct import is admitted and not explicitly forbidden. -/
def AllowsImport (policy : OwnershipPolicy) (moduleName : Lean.Name) : Prop :=
  moduleName ∈ policy.allowedImports ∧ moduleName ∉ policy.forbiddenImports

/-- The declarative import policy has no allowed/forbidden contradiction. -/
def Consistent (policy : OwnershipPolicy) : Prop :=
  Disjoint policy.allowedImports policy.forbiddenImports

theorem allowsImport_not_forbidden
    {policy : OwnershipPolicy} {moduleName : Lean.Name}
    (h : policy.AllowsImport moduleName) :
    moduleName ∉ policy.forbiddenImports :=
  h.2

end OwnershipPolicy

/--
Syntax-level facts supplied by a manifest extractor.  This core does not claim
to parse Lean source itself; it checks the typed inventory it is given.
-/
structure ProjectInventory where
  declarationNamespaces : Finset Lean.Name
  directImports : Finset Lean.Name
  modulesWithDeclarations : Finset Lean.Name
  productionImports : Finset Lean.Name
  compatibilityModules : Finset Lean.Name
  deriving DecidableEq

namespace OwnershipPolicy

/-- Executable ownership/import checks over a supplied source inventory. -/
def AcceptsInventory
    (policy : OwnershipPolicy)
    (inventory : ProjectInventory) : Prop :=
  inventory.declarationNamespaces ⊆ policy.ownsNamespaces ∧
  inventory.directImports ⊆ policy.allowedImports ∧
  Disjoint inventory.directImports policy.forbiddenImports ∧
  Disjoint policy.aggregateModules inventory.modulesWithDeclarations ∧
  Disjoint inventory.productionImports policy.testModules ∧
  Disjoint inventory.compatibilityModules inventory.modulesWithDeclarations

/-- An accepted inventory has no declarations in aggregate modules. -/
theorem aggregate_declaration_free
    {policy : OwnershipPolicy}
    {inventory : ProjectInventory}
    (h : policy.AcceptsInventory inventory) :
    Disjoint policy.aggregateModules inventory.modulesWithDeclarations :=
  h.2.2.2.1

/-- An accepted production inventory imports no declared test module. -/
theorem production_imports_no_tests
    {policy : OwnershipPolicy}
    {inventory : ProjectInventory}
    (h : policy.AcceptsInventory inventory) :
    Disjoint inventory.productionImports policy.testModules :=
  h.2.2.2.2.1

end OwnershipPolicy

/--
Typed metadata for one project.  The three fingerprints deliberately distinguish
the public Lean environment, implementation inputs, and optional runtime output.
-/
structure ProjectManifest (ProjectId : Type u) where
  projectId : ProjectId
  semanticVersion : Version
  directDependencies : Finset ProjectId
  publicEnvironmentFingerprint : Fingerprint
  implementationFingerprint : Fingerprint
  runtimeArtifactFingerprint : Option Fingerprint
  interfaceModule : Lean.Name
  soundnessTheorems : Finset Lean.Name
  upgradeTheorems : Finset Lean.Name
  ownedNamespaces : Finset Lean.Name
  allowedDependencies : Finset ProjectId
  forbiddenDependencies : Finset ProjectId

namespace ProjectManifest

variable {ProjectId : Type u}

/-- All declared direct dependencies are allowed and none is forbidden. -/
def DependenciesRespectPolicy
    (manifest : ProjectManifest ProjectId) : Prop :=
  manifest.directDependencies ⊆ manifest.allowedDependencies ∧
    Disjoint manifest.directDependencies manifest.forbiddenDependencies

end ProjectManifest

/-- One typed manifest for every project in a graph. -/
abbrev ManifestSet (G : DependencyGraph) :=
  (p : G.ProjectId) → ProjectManifest G.ProjectId

/-- Manifests agree with the identities and direct edges of their graph. -/
def ManifestsMatchGraph
    (G : DependencyGraph)
    (manifests : ManifestSet G) : Prop :=
  ∀ p,
    (manifests p).projectId = p ∧
    (manifests p).directDependencies = G.dependsOn p

/-- Adapter ownership is directional: only the adapter imports both endpoints. -/
def AdapterDirectionallyValid
    {ProjectId : Type u}
    [DecidableEq ProjectId]
    (adapter source target : ProjectManifest ProjectId) : Prop :=
  source.projectId ∈ adapter.directDependencies ∧
  target.projectId ∈ adapter.directDependencies ∧
  adapter.projectId ∉ source.directDependencies ∧
  adapter.projectId ∉ target.directDependencies

/-- Every public declaration name is assigned to at most one owning project. -/
def UniquePublicOwnership
    {ProjectId : Type u}
    [DecidableEq ProjectId]
    (declaredBy : Lean.Name → Finset ProjectId) : Prop :=
  ∀ declaration, (declaredBy declaration).card ≤ 1

end DAF
