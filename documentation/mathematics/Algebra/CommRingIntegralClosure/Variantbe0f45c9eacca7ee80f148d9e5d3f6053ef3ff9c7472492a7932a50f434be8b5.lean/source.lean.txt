-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SourceUnit.Variant055e1f8cf1b9a29bf26462368adab4abf0195efcb67df70e284368a462074845","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"055e1f8cf1b9a29bf26462368adab4abf0195efcb67df70e284368a462074845","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SourceUnit.Variant055e1f8cf1b9a29bf26462368adab4abf0195efcb67df70e284368a462074845","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"055e1f8cf1b9a29bf26462368adab4abf0195efcb67df70e284368a462074845","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/instances/CommRing_integralClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib

-- https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/category.20theory.20import.20breaks.20CommRing.20synthesis/near/449132250


namespace GRWTSK.Algebra.SourceUnit.Variant055e1f8cf1b9a29bf26462368adab4abf0195efcb67df70e284368a462074845

variable (R : Type) (A : Type) [CommRing R] [CommRing A] [Algebra R A]

/-- info: (integralClosure R A).toCommRing -/
#guard_msgs in
#synth CommRing (integralClosure R A)
