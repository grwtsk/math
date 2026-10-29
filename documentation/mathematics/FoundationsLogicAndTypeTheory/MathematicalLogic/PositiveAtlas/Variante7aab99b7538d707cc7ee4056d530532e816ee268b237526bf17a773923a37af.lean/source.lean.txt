-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LiftedComparisonDown.Variantbb5500523169df3279ec7e64c57abf89cbb75c1be769ca80a6ca33efd1c17b7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb5500523169df3279ec7e64c57abf89cbb75c1be769ca80a6ca33efd1c17b7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.LiftedComparisonDown.Variantbb5500523169df3279ec7e64c57abf89cbb75c1be769ca80a6ca33efd1c17b7f","mathematical_subject":"Logic.Foundations","original_sha256":"bb5500523169df3279ec7e64c57abf89cbb75c1be769ca80a6ca33efd1c17b7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/new-cache-source-audit/source/bb5500523169df3279ec7e64c57abf89cbb75c1be769ca80a6ca33efd1c17b7f.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.CertificationEquivalence
import FormalResearch.PositiveAtlas.CertificationUniverseFixtures

/-!
# Concrete certificate comparisons and an unused-carrier obstruction

The Boolean certificate discards an unobserved natural-number state component.
It has both Boolean and `Fin 2` minimal encodings, with exact certificate
reconstruction and a uniquely determined comparison. The state compression is
therefore not claimed reversible. A separate one-state example proves why
minimality alone cannot equate whole carriers containing unused elements.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LiftedComparisonDown.Variantbb5500523169df3279ec7e64c57abf89cbb75c1be769ca80a6ca33efd1c17b7f

namespace FormalResearch.PositiveAtlas

universe u v c


namespace CertificationComparisonInstances

universe w a b

/-- The comparison API is instantiated with genuinely independent state,
index, observable-value, carrier and opposite competitor universe levels. -/
theorem lifted_comparison_down (x : ULift.{a} Bool) :
    (StructuralQuine.comparison
      CertificationUniverseFixtures.quine.{u, v, w, a, b}
      CertificationUniverseFixtures.quine.{u, v, w, b, a} x).down = x.down := by
  exact congrArg ULift.down (StructuralQuine.comparison_recover
    CertificationUniverseFixtures.quine.{u, v, w, a, b}
    CertificationUniverseFixtures.quine.{u, v, w, b, a} ⟨()⟩ x)

/-- Only the Boolean is observed; the natural component is unobserved state. -/
def booleanFamily : CertificateFamily (Bool × ℕ) Unit where
  value _ := Bool
  observe _ s := s.1

def booleanRepresentation : SufficientRepresentation booleanFamily where
  carrier := Bool
  compress := Prod.fst
  recover _ x := x
  recover_compress _ _ := rfl

theorem booleanRepresentation_minimal :
    SufficientRepresentation.IsMinimal.{0, 0, 0, 0, c} booleanRepresentation := by
  intro R
  refine ⟨R.recover (), ?_⟩
  funext s
  exact (R.recover_compress () s).symm

def booleanQuine : StructuralQuine.{0, 0, 0, 0, c} booleanFamily where
  quotient := booleanRepresentation
  reconstruct x := (x, 0)
  «section» _ := rfl
  reconstruct_equivalent _ _ := rfl
  minimal := booleanRepresentation_minimal

/-- A different finite carrier encodes the same Boolean certificate. -/
def binaryRepresentation : SufficientRepresentation booleanFamily where
  carrier := Fin 2
  compress s := finTwoEquiv.symm s.1
  recover _ x := finTwoEquiv x
  recover_compress _ s := finTwoEquiv.apply_symm_apply s.1

theorem binaryRepresentation_minimal :
    SufficientRepresentation.IsMinimal.{0, 0, 0, 0, c} binaryRepresentation := by
  intro R
  refine ⟨fun x => finTwoEquiv.symm (R.recover () x), ?_⟩
  funext s
  exact congrArg finTwoEquiv.symm (R.recover_compress () s).symm

def binaryQuine : StructuralQuine.{0, 0, 0, 0, c} booleanFamily where
  quotient := binaryRepresentation
  reconstruct x := (finTwoEquiv x, 0)
  «section» x := finTwoEquiv.symm_apply_apply x
  reconstruct_equivalent s _ := finTwoEquiv.apply_symm_apply s.1
  minimal := binaryRepresentation_minimal

/-- This canonical comparison is the familiar Boolean-to-binary encoding. -/
theorem boolean_binary_comparison :
    StructuralQuine.comparison booleanQuine binaryQuine = finTwoEquiv.symm := by
  apply Equiv.ext
  intro x
  exact StructuralQuine.comparison_compress booleanQuine binaryQuine (x, 0)

/-- The comparison preserves the independent observable rather than assuming
that the two carriers use the same literal encoding. -/
theorem boolean_binary_decoder (x : Bool) :
    finTwoEquiv (StructuralQuine.comparison booleanQuine binaryQuine x) = x :=
  StructuralQuine.comparison_recover booleanQuine binaryQuine () x

/-- Certificate reconstruction does not reverse deletion of the unobserved state. -/
theorem boolean_compression_not_injective :
    ¬ Function.Injective booleanRepresentation.compress := by
  intro h
  have hn := congrArg Prod.snd (h (show
    booleanRepresentation.compress (false, 0) =
      booleanRepresentation.compress (false, 1) from rfl))
  exact Nat.zero_ne_one hn

/-- A future transition can inspect previously unobserved state information. -/
def hiddenStep (s : Bool × ℕ) : Bool × ℕ :=
  (if s.2 = 0 then s.1 else !s.1, s.2)

/-- Snapshot sufficiency and minimality do not construct a quotient evolution
when the transition uses discarded information. -/
theorem hiddenStep_has_no_certificate_lift :
    ¬ ∃ step : Bool → Bool, ∀ s,
      step (booleanRepresentation.compress s) =
        booleanRepresentation.compress (hiddenStep s) := by
  rintro ⟨step, h⟩
  have hf : step false = false := by
    simpa [booleanRepresentation, hiddenStep] using h (false, 0)
  have ht : step false = true := by
    simpa [booleanRepresentation, hiddenStep] using h (false, 1)
  exact Bool.false_ne_true (hf.symm.trans ht)

/-- One state with one trivial admitted observable. -/
def trivialFamily : CertificateFamily Unit Unit where
  value _ := Unit
  observe _ _ := ()

def unitRepresentation : SufficientRepresentation trivialFamily where
  carrier := Unit
  compress _ := ()
  recover _ _ := ()
  recover_compress _ _ := rfl

/-- The carrier has an unused `true` element. -/
def unusedRepresentation : SufficientRepresentation trivialFamily where
  carrier := Bool
  compress _ := false
  recover _ _ := ()
  recover_compress _ _ := rfl

theorem unitRepresentation_minimal :
    SufficientRepresentation.IsMinimal.{0, 0, 0, 0, c} unitRepresentation := by
  intro R
  exact ⟨fun _ => (), rfl⟩

theorem unusedRepresentation_minimal :
    SufficientRepresentation.IsMinimal.{0, 0, 0, 0, c} unusedRepresentation := by
  intro R
  exact ⟨fun _ => false, rfl⟩

/-- Deleting unused carrier elements is an explicit reachable-image operation,
for which the general comparison really does construct an equivalence. -/
noncomputable def unused_reachable_comparison :
    Set.range unitRepresentation.compress ≃ Set.range unusedRepresentation.compress :=
  SufficientRepresentation.reachableEquiv unitRepresentation unusedRepresentation
    unitRepresentation_minimal unusedRepresentation_minimal

theorem unusedRepresentation_not_surjective :
    ¬ Function.Surjective unusedRepresentation.compress := by
  intro h
  obtain ⟨s, hs⟩ := h true
  exact Bool.false_ne_true hs

/-- Both representations are minimal, but the unrestricted carriers admit no
equivalence. This proves the necessity of the surjectivity/reachability clause. -/
theorem unused_carriers_not_equivalent :
    ¬ Nonempty (unitRepresentation.carrier ≃ unusedRepresentation.carrier) := by
  rintro ⟨e⟩
  obtain ⟨x, hx⟩ := e.surjective false
  obtain ⟨y, hy⟩ := e.surjective true
  cases x
  cases y
  exact Bool.false_ne_true (hx.symm.trans hy)

end CertificationComparisonInstances

end FormalResearch.PositiveAtlas
