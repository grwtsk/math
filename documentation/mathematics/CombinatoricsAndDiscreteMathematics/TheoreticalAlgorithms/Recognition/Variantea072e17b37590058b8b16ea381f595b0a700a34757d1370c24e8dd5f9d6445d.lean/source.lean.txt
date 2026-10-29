-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HumanRecognitionReceipt.Variantbb6869645b3dc35809f6e89fe6e16a329e08f18de466aba2192725647ea2ddf9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb6869645b3dc35809f6e89fe6e16a329e08f18de466aba2192725647ea2ddf9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HumanRecognitionReceipt.Variantbb6869645b3dc35809f6e89fe6e16a329e08f18de466aba2192725647ea2ddf9","mathematical_subject":"Computation.DataStructures","original_sha256":"bb6869645b3dc35809f6e89fe6e16a329e08f18de466aba2192725647ea2ddf9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Juris/Recognition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Authority.Evidence
import Mathematics.Capability.Principal

/-!
# Human recognition

Recognition is an optional human-issued display receipt.  It is neither an
emotion estimator nor an input to permission, trust, theorem authority, or
ranking.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HumanRecognitionReceipt.Variantbb6869645b3dc35809f6e89fe6e16a329e08f18de466aba2192725647ea2ddf9

namespace Mathematics.Juris

open Mathematics.Capability

structure HumanRecognitionReceipt where
  issuer : Principal
  issuer_is_human :
    issuer.kind = .human
  scope : StableId
  recognizedConduct : List StableId
  evidenceDigest : Digest
  revocableDisplayPolicy : StableId

def HumanRecognitionReceipt.impliesTrust
    (_ : HumanRecognitionReceipt) : Bool :=
  false

def HumanRecognitionReceipt.evidenceKind
    (_ : HumanRecognitionReceipt) :
    Authority.EvidenceKind :=
  .runtimeObservation

@[simp] theorem trust_not_implied_by_recognition
    (recognition : HumanRecognitionReceipt) :
    recognition.impliesTrust = false :=
  rfl

@[simp] theorem recognition_has_no_theorem_authority
    (recognition : HumanRecognitionReceipt) :
    Authority.contributesTheoremAuthority recognition.evidenceKind = false :=
  rfl

end Mathematics.Juris
