-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RhetoricalRole.Variant661e2653830ddced38011484f1b1cfcf5d8c63b1e7086ea0b0a8f9b8fb5af8a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"661e2653830ddced38011484f1b1cfcf5d8c63b1e7086ea0b0a8f9b8fb5af8a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RhetoricalRole.Variant661e2653830ddced38011484f1b1cfcf5d8c63b1e7086ea0b0a8f9b8fb5af8a0","mathematical_subject":"Foundations.Unclassified","original_sha256":"661e2653830ddced38011484f1b1cfcf5d8c63b1e7086ea0b0a8f9b8fb5af8a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Rhetorical/Role.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Universe.RhetoricalRole

/-!
# Rhetorical roles

These seven constructors label a concept's position in a rhetorical relation.
They are finite presentation metadata; changing a role does not identify or
alter the underlying concept.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RhetoricalRole.Variant661e2653830ddced38011484f1b1cfcf5d8c63b1e7086ea0b0a8f9b8fb5af8a0

namespace DAF.Rhetorical

/-- Public rhetorical-layer alias of the transport vocabulary. -/
abbrev RhetoricalRole := Universe.RhetoricalRole

/-- Canonical index of the project rhetorical kernel. -/
abbrev RhetoricalIndex := Universe.ConceptId × RhetoricalRole

end DAF.Rhetorical
