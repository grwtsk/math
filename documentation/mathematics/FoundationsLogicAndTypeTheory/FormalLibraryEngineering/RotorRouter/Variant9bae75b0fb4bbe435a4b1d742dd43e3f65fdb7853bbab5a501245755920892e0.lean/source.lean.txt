-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RotorStepCertificate.Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RotorStepCertificate.Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff","mathematical_subject":"Foundations.Unclassified","original_sha256":"1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Exploration/RotorRouter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Deterministic rotor transition and cost-order-preserving tie break
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RotorStepCertificate.Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff

namespace Mathematics.GraphAccess

def rotorTransition (currentPort degree : Nat) : Nat :=
  if degree = 0 then 0 else (currentPort + 1) % degree

structure RotorStepCertificate where
  currentPort : Nat
  degree : Nat
  nextPort : Nat
  transitionExact :
    nextPort = rotorTransition currentPort degree
deriving Repr

theorem rotor_transition_deterministic
    (certificate : RotorStepCertificate) :
    certificate.nextPort =
      rotorTransition certificate.currentPort certificate.degree :=
  certificate.transitionExact

structure RotorTieBreakCertificate where
  minimumPrimaryCost : Nat
  selectedPrimaryCost : Nat
  selectedRemainsAtMinimum :
    selectedPrimaryCost = minimumPrimaryCost
deriving Repr

theorem rotor_tie_break_preserves_astar_order
    (certificate : RotorTieBreakCertificate) :
    certificate.selectedPrimaryCost =
      certificate.minimumPrimaryCost :=
  certificate.selectedRemainsAtMinimum

end Mathematics.GraphAccess
