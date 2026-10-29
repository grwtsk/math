-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Face.Variant32057a5cba5d2570cc184abb3480ed8781a9447057dfa3ce0d31022f03078989","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32057a5cba5d2570cc184abb3480ed8781a9447057dfa3ce0d31022f03078989","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Face.Variant32057a5cba5d2570cc184abb3480ed8781a9447057dfa3ce0d31022f03078989","mathematical_subject":"Foundations.Unclassified","original_sha256":"32057a5cba5d2570cc184abb3480ed8781a9447057dfa3ce0d31022f03078989","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Codec/CubeSurface.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Six-face cube presentation

This is the formal presentation shape used to classify the Rust `bits-to-cube`
mode. It is a finite layout, not a cubical-topology construction.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Face.Variant32057a5cba5d2570cc184abb3480ed8781a9447057dfa3ce0d31022f03078989

namespace BitMatrix.Codec.CubeSurface

/-- Stable six-face serialization order. -/
inductive Face where
  | front
  | back
  | top
  | bottom
  | left
  | right
  deriving DecidableEq, Repr

/-- One square, six-face Boolean presentation with zero-padding capacity. -/
structure Presentation where
  side : Nat
  sidePositive : 0 < side
  sourceBitCount : Nat
  cell : Face → Fin side → Fin side → Bool
  sourceFits : sourceBitCount ≤ 6 * side * side

/-- Total number of presented face cells. -/
def Presentation.surfaceCapacity (presentation : Presentation) : Nat :=
  6 * presentation.side * presentation.side

/-- Padding is the unused suffix of the face presentation. -/
def Presentation.paddingBitCount (presentation : Presentation) : Nat :=
  presentation.surfaceCapacity - presentation.sourceBitCount

end BitMatrix.Codec.CubeSurface
