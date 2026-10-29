-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StratifiedPresentationNode.Variantb72db13453316c89108240af7c6653485a55430b45b3fbf7d1e22d54b4dad2fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b72db13453316c89108240af7c6653485a55430b45b3fbf7d1e22d54b4dad2fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.StratifiedPresentationNode.Variantb72db13453316c89108240af7c6653485a55430b45b3fbf7d1e22d54b4dad2fa","mathematical_subject":"Computation.DataStructures","original_sha256":"b72db13453316c89108240af7c6653485a55430b45b3fbf7d1e22d54b4dad2fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Presentation/StratifiedNode.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Frontier.OrdinalIndex

/-!
# Stratified presentation node
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StratifiedPresentationNode.Variantb72db13453316c89108240af7c6653485a55430b45b3fbf7d1e22d54b4dad2fa

namespace Mathematics.StratifiedBoundary

structure StratifiedPresentationNode where
  nodeId : String
  persistentIdentity : String
  finiteCutRef : String
  predecessorCutRef : Option String
  ordinalProfileRef : String
  normalizedStratumRef : String
  localRank : Option Nat
  ordinalIndex : Option StratifiedFrontierIndex
  displayedApproximant : Option Nat
  unresolvedLimitObligationRefs : List String
  noRuntimeEnumerationNotice : Bool := true
  noRuntimeEnumerationNotice_exact :
    noRuntimeEnumerationNotice = true

end Mathematics.StratifiedBoundary
