-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Span.Variant7f6a22f660c198a8622f495f11f1118d554979980c86cc25f958370cdb3e4b9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f6a22f660c198a8622f495f11f1118d554979980c86cc25f958370cdb3e4b9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Span.Variant7f6a22f660c198a8622f495f11f1118d554979980c86cc25f958370cdb3e4b9a","mathematical_subject":"Foundations.Unclassified","original_sha256":"7f6a22f660c198a8622f495f11f1118d554979980c86cc25f958370cdb3e4b9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Span.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.TextCarrier

/-! # Source-identity-indexed half-open spans -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Span.Variant7f6a22f660c198a8622f495f11f1118d554979980c86cc25f958370cdb3e4b9a

namespace Mathematics.SemanticTokenization

structure Span (text : TextCarrier) where
  start : Nat
  stop : Nat
  start_lt_stop : start < stop
  stop_le_length : stop ≤ text.length

def Span.Valid {text : TextCarrier} (span : Span text) : Prop :=
  span.start < span.stop ∧ span.stop ≤ text.length

theorem Span.valid {text : TextCarrier} (span : Span text) :
    span.Valid :=
  ⟨span.start_lt_stop, span.stop_le_length⟩

theorem Span.nonempty {text : TextCarrier} (span : Span text) :
    span.start ≠ span.stop :=
  Nat.ne_of_lt span.start_lt_stop

def Span.SameCoordinates
    {text : TextCarrier}
    (left right : Span text) : Prop :=
  left.start = right.start ∧ left.stop = right.stop

theorem Span.sameCoordinates_refl
    {text : TextCarrier}
    (span : Span text) :
    span.SameCoordinates span :=
  ⟨rfl, rfl⟩

end Mathematics.SemanticTokenization
