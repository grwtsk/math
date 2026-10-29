-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectIdentity.Variant15af9e07fd60bf265324e14fea6b325a1f057b92da9263f1512ce03bf5e8f978","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15af9e07fd60bf265324e14fea6b325a1f057b92da9263f1512ce03bf5e8f978","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectIdentity.Variant15af9e07fd60bf265324e14fea6b325a1f057b92da9263f1512ce03bf5e8f978","mathematical_subject":"Foundations.Unclassified","original_sha256":"15af9e07fd60bf265324e14fea6b325a1f057b92da9263f1512ce03bf5e8f978","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ecosystem/ProjectIdentity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-!
# Source-sovereign project identity

An ecosystem project is identified independently of its current name,
filesystem location, or Lean namespace.  Renames therefore preserve a stable
project identity while locators remain historical provenance.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectIdentity.Variant15af9e07fd60bf265324e14fea6b325a1f057b92da9263f1512ce03bf5e8f978

namespace Mathematics.Ecosystem

/-- Stable source-project identity qualified by its publishing authority. -/
structure ProjectIdentity where
  projectId : ProjectId
  host : String
  owner : String
  repository : String
  canonicalLocator : String
  deriving DecidableEq, Repr

/-- A project identity is usable only when every source coordinate is present. -/
def ProjectIdentity.Valid (identity : ProjectIdentity) : Prop :=
  identity.projectId.Valid ∧
  identity.host ≠ "" ∧
  identity.owner ≠ "" ∧
  identity.repository ≠ "" ∧
  identity.canonicalLocator ≠ ""

/-- Immutable revision identity; branch names are intentionally excluded. -/
structure ProjectRevision where
  project : ProjectIdentity
  revisionId : StableId
  sourceDigest : Digest
  deriving DecidableEq, Repr

/-- Project qualification prevents namespace collisions across repositories. -/
structure ProjectQualifiedName where
  project : ProjectId
  localName : String
  deriving DecidableEq, Repr

end Mathematics.Ecosystem
