-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MappingTorusCertificate.Variant45d37977776c7f599bf3e41dd887cba55a9bd5825c922d7d21f961979f78b742","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45d37977776c7f599bf3e41dd887cba55a9bd5825c922d7d21f961979f78b742","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MappingTorusCertificate.Variant45d37977776c7f599bf3e41dd887cba55a9bd5825c922d7d21f961979f78b742","mathematical_subject":"Foundations.Unclassified","original_sha256":"45d37977776c7f599bf3e41dd887cba55a9bd5825c922d7d21f961979f78b742","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/TensorNetwork/MappingTorus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.TensorNetwork.Boundary

/-!
# Mapping-torus and line-fiber certificates

An involutive finite carrier supplies a permutation-loop mapping torus.  A
Möbius line-bundle claim requires the additional orientation-reversing real
fiber action.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MappingTorusCertificate.Variant45d37977776c7f599bf3e41dd887cba55a9bd5825c922d7d21f961979f78b742

namespace Mathematics.TensorNetwork

/-- Certified mapping-torus monodromy. -/
structure MappingTorusCertificate (Carrier : Type*) where
  monodromy : Carrier → Carrier
  inverse : Carrier → Carrier
  leftInverse : Function.LeftInverse inverse monodromy
  rightInverse : Function.RightInverse inverse monodromy

/-- Mapping torus of the typed protocol involution. -/
def typedMobiusMappingTorus (width : Nat) :
    MappingTorusCertificate (TypedMobiusCarrier width) where
  monodromy := mobiusTwist
  inverse := mobiusTwist
  leftInverse := mobiusTwist_involutive
  rightInverse := mobiusTwist_involutive

/--
Additional data required for a genuine orientation-reversing real line fiber.
It is deliberately absent from the finite bit-carrier certificate.
-/
structure OrientationReversingLineFiberCertificate
    (Carrier : Type*) where
  base : MappingTorusCertificate Carrier
  fiberAction : Carrier → ℝ → ℝ
  reverses :
    ∀ carrier coordinate,
      fiberAction carrier coordinate = -coordinate

end Mathematics.TensorNetwork
