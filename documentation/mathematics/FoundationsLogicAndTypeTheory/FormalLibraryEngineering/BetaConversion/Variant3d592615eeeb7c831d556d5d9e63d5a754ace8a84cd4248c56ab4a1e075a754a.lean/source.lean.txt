-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConversionIffNormalEq.Variante7369d1ec28e551fb85478a0017443e42e8273f27f7a907ee0aabe14303e37a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7369d1ec28e551fb85478a0017443e42e8273f27f7a907ee0aabe14303e37a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ConversionIffNormalEq.Variante7369d1ec28e551fb85478a0017443e42e8273f27f7a907ee0aabe14303e37a3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e7369d1ec28e551fb85478a0017443e42e8273f27f7a907ee0aabe14303e37a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/artifacts/type-theory/normalization/port-4.33/FormalResearch/TypeTheory/PureTypeSystem/BetaConversion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer

/-!
Executable supported beta conversion uses actual representative equality.
It reports failure when either supplied fuel is insufficient. On accessible
starts, certified exact heights guarantee a decision of actual source
conversion. This does not claim typechecking without effective source rules.
Human research direction and evaluation: grwtsk contributors.
Formal construction and pinned replay: Codex.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConversionIffNormalEq.Variante7369d1ec28e551fb85478a0017443e42e8273f27f7a907ee0aabe14303e37a3

namespace FormalResearch.TypeTheory.BetaReduction

open OAI.PureTypeSystem

universe u

variable {S : Type u}

/-- Source conversion is reflected by equality of two actually reached normal forms. -/
theorem conversion_iff_normal_eq {first second firstNormal secondNormal : Expr S}
    (firstPath : Reduces first firstNormal) (secondPath : Reduces second secondNormal)
    (normalFirst : Normal firstNormal) (normalSecond : Normal secondNormal) :
    Converts first second ↔ firstNormal = secondNormal := by
  constructor
  · intro converted
    have normalized : Converts firstNormal secondNormal :=
      .trans _ _ _ (.symm _ _ firstPath.converts)
        (.trans _ _ _ converted secondPath.converts)
    obtain ⟨joined, left, right⟩ := normalized.join
    exact (normalFirst.reduces_eq left).trans (normalSecond.reduces_eq right).symm
  · intro equality
    exact .trans _ _ _ firstPath.converts (equality ▸ .symm _ _ secondPath.converts)

/-- The normalizer and an effective sort equality give an executable partial conversion checker. -/
def conversionFuel [DecidableEq S] (firstFuel secondFuel : ℕ)
    (first second : Expr S) : Option Bool :=
  match normalizeFuel firstFuel first with
  | none => none
  | some firstNormal =>
      match normalizeFuel secondFuel second with
      | none => none
      | some secondNormal => some (decide (firstNormal = secondNormal))

/-- Every actual returned conversion bit has exactly the original source meaning. -/
theorem conversionFuel_correct [DecidableEq S] {firstFuel secondFuel : ℕ}
    {first second : Expr S} {result : Bool}
    (success : conversionFuel firstFuel secondFuel first second = some result) :
    result = true ↔ Converts first second := by
  cases firstRun : normalizeFuel firstFuel first with
  | none => simp [conversionFuel, firstRun] at success
  | some firstNormal =>
      cases secondRun : normalizeFuel secondFuel second with
      | none => simp [conversionFuel, firstRun, secondRun] at success
      | some secondNormal =>
          have equality : decide (firstNormal = secondNormal) = result := by
            simpa [conversionFuel, firstRun, secondRun] using success
          obtain ⟨firstPath, normalFirst⟩ := normalizeFuel_sound firstRun
          obtain ⟨secondPath, normalSecond⟩ := normalizeFuel_sound secondRun
          rw [← equality, decide_eq_true_eq]
          exact (conversion_iff_normal_eq firstPath secondPath normalFirst normalSecond).symm

/-- Certified heights decide conversion without restricting the actual source transitions. -/
theorem conversionFuel_complete [DecidableEq S] (first second : AccessibleState S)
    (firstFuel secondFuel : ℕ) (firstSufficient : height first ≤ firstFuel)
    (secondSufficient : height second ≤ secondFuel) :
    ∃ result, conversionFuel firstFuel secondFuel first.val second.val = some result ∧
      (result = true ↔ Converts first.val second.val) := by
  obtain ⟨firstNormal, firstRun⟩ := normalizeFuel_complete first firstFuel firstSufficient
  obtain ⟨secondNormal, secondRun⟩ := normalizeFuel_complete second secondFuel secondSufficient
  have success : conversionFuel firstFuel secondFuel first.val second.val =
      some (decide (firstNormal = secondNormal)) := by
    simp [conversionFuel, firstRun, secondRun]
  exact ⟨_, success, conversionFuel_correct success⟩

end FormalResearch.TypeTheory.BetaReduction
