-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LowDiscrepancyCertificate.Variant33e65fcabe5164e563deccad07146df49eb9760f8fd11c366a2340fd3f748482","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33e65fcabe5164e563deccad07146df49eb9760f8fd11c366a2340fd3f748482","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LowDiscrepancyCertificate.Variant33e65fcabe5164e563deccad07146df49eb9760f8fd11c366a2340fd3f748482","mathematical_subject":"Computation.DataStructures","original_sha256":"33e65fcabe5164e563deccad07146df49eb9760f8fd11c366a2340fd3f748482","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Sampling/LowDiscrepancy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Sampling.InvariantLaw

/-!
# Discrepancy-bounded sampling certificate
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LowDiscrepancyCertificate.Variant33e65fcabe5164e563deccad07146df49eb9760f8fd11c366a2340fd3f748482

namespace Mathematics.GraphAccess

structure LowDiscrepancyCertificate (State Observable : Type u) where
  invariantLaw : InvariantLaw State Observable
  observable : Observable
  samples : List State
  estimatedTrace : Int
  errorMagnitude : Nat
  errorBound : Nat
  discrepancyCertified : Prop
  discrepancyEvidence : discrepancyCertified
  errorWithinBound : errorMagnitude ≤ errorBound

end Mathematics.GraphAccess
