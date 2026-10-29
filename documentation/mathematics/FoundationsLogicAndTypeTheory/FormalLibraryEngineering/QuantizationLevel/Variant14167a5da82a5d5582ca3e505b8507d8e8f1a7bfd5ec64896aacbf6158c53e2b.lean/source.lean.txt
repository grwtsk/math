-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResolutionBits.Variantab722fd397e04ece80c295826786b47df753a58fe18e0a9c9a2d40914a67f14a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab722fd397e04ece80c295826786b47df753a58fe18e0a9c9a2d40914a67f14a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ResolutionBits.Variantab722fd397e04ece80c295826786b47df753a58fe18e0a9c9a2d40914a67f14a","mathematical_subject":"Foundations.Unclassified","original_sha256":"ab722fd397e04ece80c295826786b47df753a58fe18e0a9c9a2d40914a67f14a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/Surface/ContinuousAssurance/QuantizationLevel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Positive finite quantization levels

`ResolutionBits` records representational granularity and its positivity
proof.  It is intentionally independent of matrix dimensions, compiler word
width, evidence authority, assurance level, and claim status.

The policy enumerations below describe representation choices.  At present
only bit planes have a formal implementation; registering bounded words does
not manufacture an implementation or an equivalence with bit planes.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResolutionBits.Variantab722fd397e04ece80c295826786b47df753a58fe18e0a9c9a2d40914a67f14a

namespace Surface.ContinuousAssurance

/-- A finite, strictly positive number of quantization bits. -/
structure ResolutionBits where
  value : Nat
  positive : 0 < value
  deriving Repr

instance : DecidableEq ResolutionBits :=
  fun left right =>
    if h : left.value = right.value then
      isTrue (by cases left; cases right; simp_all)
    else
      isFalse (fun equality => h (congrArg ResolutionBits.value equality))

/-- The positivity proof carried by every resolution. -/
theorem ResolutionBits.value_pos
    (resolution : ResolutionBits) :
    0 < resolution.value :=
  resolution.positive

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
