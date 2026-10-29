-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RealScalar.Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RealScalar.Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03","mathematical_subject":"Foundations.Unclassified","original_sha256":"218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/Choice/Vitali.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.Choice.QuotientRepresentatives

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.

What is not claimed:
This historical finite integer toy model is not a theorem about classical
Vitali sets or nonmeasurability.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RealScalar.Variant218820663acb7ae5a26aa9843c15738d3c8819da6233077dedbb97972ec0fb03

namespace Surface
namespace Legacy

abbrev RealScalar := Int

def rationalTranslateEquivalent
    (x y : RealScalar) : Prop :=
  x = y

def UnitInterval : Set RealScalar :=
  fun x => x = 0 ∨ x = 1

def IsVitaliSet
    (V : Set RealScalar) : Prop :=
  ∀ x, UnitInterval x ->
    ∃ v, V v ∧ rationalTranslateEquivalent x v ∧
      ∀ y, V y -> rationalTranslateEquivalent x y -> y = v

theorem vitali_exists_under_choice
    (_C : ChoiceOperator) :
    ∃ V : Set RealScalar,
      IsVitaliSet V := by
  exact ⟨UnitInterval, by
    intro x hx
    exact ⟨x, hx, rfl, by
      intro y _ hy
      exact hy.symm⟩⟩

end Legacy
end Surface
