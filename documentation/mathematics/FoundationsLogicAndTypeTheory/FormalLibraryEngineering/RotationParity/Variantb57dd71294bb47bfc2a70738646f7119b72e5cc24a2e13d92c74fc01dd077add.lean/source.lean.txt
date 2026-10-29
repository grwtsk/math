-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrientationStep.Variant13b733ab77782d8c697440c44a04e04bde9d1891c64d788f3c4c89ad18c79a92","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13b733ab77782d8c697440c44a04e04bde9d1891c64d788f3c4c89ad18c79a92","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OrientationStep.Variant13b733ab77782d8c697440c44a04e04bde9d1891c64d788f3c4c89ad18c79a92","mathematical_subject":"Foundations.Unclassified","original_sha256":"13b733ab77782d8c697440c44a04e04bde9d1891c64d788f3c4c89ad18c79a92","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Modular/RotationParity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrientationStep.Variant13b733ab77782d8c697440c44a04e04bde9d1891c64d788f3c4c89ad18c79a92

namespace Noeoueue.Modular.RotationParity

def orientationStep (C : Nat) (epsilon : Bool) : Bool := epsilon.xor (C % 2 == 1)

theorem orientation_step (C : Nat) (epsilon : Bool) :
    orientationStep C epsilon = epsilon.xor (C % 2 == 1) := rfl

theorem even_ceiling_preserves (C : Nat) (epsilon : Bool) (h : C % 2 = 0) :
    orientationStep C epsilon = epsilon := by
  simp [orientationStep, h]

theorem odd_ceiling_toggles (C : Nat) (epsilon : Bool) (h : C % 2 = 1) :
    orientationStep C epsilon = !epsilon := by
  cases epsilon <;> simp [orientationStep, h]

end Noeoueue.Modular.RotationParity
