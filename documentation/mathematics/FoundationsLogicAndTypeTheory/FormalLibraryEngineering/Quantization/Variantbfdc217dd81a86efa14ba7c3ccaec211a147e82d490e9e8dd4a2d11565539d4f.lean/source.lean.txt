-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SampleCfg.Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SampleCfg.Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Tests/Quantization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Quantization.Core
import Mathlib.Tactic.DeriveFintype

/-!
# Finite quantization tests

Test-only examples for declarative and array-backed quantizers.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SampleCfg.Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1

namespace BitMatrix.Tests.Quantization

private inductive SampleCfg where
  | cfg₁
  | cfg₂
  | cfg₃
  | cfg₄
  deriving DecidableEq, Fintype

private def sampleRows : Nat := 1

private def sampleCols : Nat := 2

/-- Four configurations with outputs `00`, `00`, `10`, and `11`. -/
private def sampleEncode :
    SampleCfg → BitMatrix sampleRows sampleCols
  | .cfg₁ | .cfg₂ => fun _ _ => false
  | .cfg₃ => fun _ j => j.val == 0
  | .cfg₄ => fun _ _ => true

private def sampleQ :
    BitMatrix.Quantizer SampleCfg sampleRows sampleCols :=
  ⟨sampleEncode⟩

/-- The same four observations produced through the array-backed layer. -/
private def sampleEncodeArrayBacked :
    SampleCfg → BitMatrix.ArrayBacked sampleRows sampleCols
  | .cfg₁ | .cfg₂ => ⟨#[false, false], by decide⟩
  | .cfg₃ => ⟨#[true, false], by decide⟩
  | .cfg₄ => ⟨#[true, true], by decide⟩

private def sampleArrayBackedQ :
    BitMatrix.Quantizer SampleCfg sampleRows sampleCols :=
  BitMatrix.Quantizer.ofArrayBacked sampleEncodeArrayBacked

example :
    sampleQ.Indistinguishable .cfg₁ .cfg₂ := by
  rfl

example :
    ¬ sampleQ.Indistinguishable .cfg₁ .cfg₃ := by
  change sampleQ.encode .cfg₁ ≠ sampleQ.encode .cfg₃
  intro h
  have h00 := congrArg
    (fun A : BitMatrix sampleRows sampleCols =>
      A ⟨0, by decide⟩ ⟨0, by decide⟩)
    h
  simp [sampleQ, sampleEncode] at h00

example :
    sampleQ.effectiveStates.card = 3 := by
  native_decide

example :
    sampleQ.effectiveStates.card ≤
      2 ^ (sampleRows * sampleCols) :=
  sampleQ.card_effectiveStates_le_bits

example :
    Function.Bijective sampleQ.quotientToEffective :=
  ⟨sampleQ.quotientToEffective_injective,
   sampleQ.quotientToEffective_surjective⟩

example :
    sampleArrayBackedQ.Indistinguishable .cfg₁ .cfg₂ := by
  change (BitMatrix.Quantizer.ofArrayBacked sampleEncodeArrayBacked).Indistinguishable .cfg₁ .cfg₂
  rw [BitMatrix.Quantizer.ofArrayBacked_indistinguishable_iff]
  rfl

example :
    sampleArrayBackedQ.encode .cfg₃ =
      (sampleEncodeArrayBacked .cfg₃).toMatrix :=
  BitMatrix.Quantizer.ofArrayBacked_encode sampleEncodeArrayBacked .cfg₃

end BitMatrix.Tests.Quantization
