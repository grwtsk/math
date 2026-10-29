-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConversionSetoid.Variant97b77b836e2413ecd1490748c34350727d15a4214ac09a22a1cc3875da64d714","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97b77b836e2413ecd1490748c34350727d15a4214ac09a22a1cc3875da64d714","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ConversionSetoid.Variant97b77b836e2413ecd1490748c34350727d15a4214ac09a22a1cc3875da64d714","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"97b77b836e2413ecd1490748c34350727d15a4214ac09a22a1cc3875da64d714","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/artifacts/type-theory/normalization/port-4.33/FormalResearch/TypeTheory/PureTypeSystem/BetaDenotation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer

/-!
Actual source conversion quotients give a denotation preserved by the complete
annotated beta normalizer. The quotient is the source equational semantics;
future operational behavior requires its own contract.
Human research direction and evaluation: grwtsk contributors.
Formal construction and pinned replay: Codex.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConversionSetoid.Variant97b77b836e2413ecd1490748c34350727d15a4214ac09a22a1cc3875da64d714

namespace FormalResearch.TypeTheory.BetaReduction

open OAI.PureTypeSystem

universe u

/-- The actual source beta-conversion equivalence. -/
def conversionSetoid (S : Type u) : Setoid (Expr S) where
  r := Converts
  iseqv := ⟨fun term => .refl term,
    fun conversion => .symm _ _ conversion,
    fun first second => .trans _ _ _ first second⟩

/-- Denotation in the actual annotated source conversion quotient. -/
def denotation {S : Type u} (term : Expr S) : Quotient (conversionSetoid S) :=
  Quotient.mk (conversionSetoid S) term

/-- Every permitted source step preserves the actual source quotient denotation. -/
theorem step_preserves_denotation {S : Type u} {term target : Expr S}
    (reduction : Beta term target) : denotation term = denotation target :=
  Quotient.sound (.rel _ _ reduction)

/-- The executable normalizer preserves the actual source quotient denotation. -/
theorem normalizeFuel_preserves_denotation {S : Type u} {term target : Expr S} {fuel : ℕ}
    (success : normalizeFuel fuel term = some target) : denotation term = denotation target :=
  Quotient.sound (normalizeFuel_sound success).1.converts

end FormalResearch.TypeTheory.BetaReduction
