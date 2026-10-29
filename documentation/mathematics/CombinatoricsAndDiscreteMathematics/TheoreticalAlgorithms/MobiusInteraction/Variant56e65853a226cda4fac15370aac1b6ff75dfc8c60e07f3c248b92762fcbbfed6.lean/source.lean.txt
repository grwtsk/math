-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusInteractionDescriptor.Variantbd1f3d553d7f1f6be8b7c349ae71b993bb7d898d29964fab559d1a0960be83b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd1f3d553d7f1f6be8b7c349ae71b993bb7d898d29964fab559d1a0960be83b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MobiusInteractionDescriptor.Variantbd1f3d553d7f1f6be8b7c349ae71b993bb7d898d29964fab559d1a0960be83b4","mathematical_subject":"Computation.DataStructures","original_sha256":"bd1f3d553d7f1f6be8b7c349ae71b993bb7d898d29964fab559d1a0960be83b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/MobiusInteraction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusInteractionDescriptor.Variantbd1f3d553d7f1f6be8b7c349ae71b993bb7d898d29964fab559d1a0960be83b4

namespace Mathematics.SemiLocalDefect

structure MobiusInteractionDescriptor where
  interactionRef : String
  supportRefs : List String
  signCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .higherMobiusInteraction

end Mathematics.SemiLocalDefect
