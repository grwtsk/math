-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuantizationEncoding.Variant46fda411748e4abf1c5e0bff6da99b62951f1f08036e18486fc753e7335f09bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46fda411748e4abf1c5e0bff6da99b62951f1f08036e18486fc753e7335f09bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.QuantizationEncoding.Variant46fda411748e4abf1c5e0bff6da99b62951f1f08036e18486fc753e7335f09bd","mathematical_subject":"Foundations.Unclassified","original_sha256":"46fda411748e4abf1c5e0bff6da99b62951f1f08036e18486fc753e7335f09bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/QuantizationLevel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Quantization.Resolution

/-!
# Positive finite quantization levels

`Surface.Quantization.ResolutionBits` supplies the neutral representation
carrier. This module adds assurance-owned encoding, overflow, and rounding
policies without redefining that carrier.

The policy enumerations below describe representation choices.  At present
only bit planes have a formal implementation; registering bounded words does
not manufacture an implementation or an equivalence with bit planes.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuantizationEncoding.Variant46fda411748e4abf1c5e0bff6da99b62951f1f08036e18486fc753e7335f09bd

namespace Surface.ContinuousAssurance

/-- Representation family selected by a quantization profile. -/
inductive QuantizationEncoding
  | bitPlanes
  | boundedWords
  deriving DecidableEq, Repr

/-- Behavior requested when a compiler target cannot hold the request. -/
inductive QuantizationOverflowPolicy
  | reject
  | compilerSaturate
  deriving DecidableEq, Repr

/-- Explicit rounding policy for a numerical encoder. -/
inductive QuantizationRoundingPolicy
  | floor
  | ceiling
  | nearestTiesToEven
  deriving DecidableEq, Repr

end Surface.ContinuousAssurance
