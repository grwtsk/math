# Quantization — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62b907fffc56c66e75ac598592fc271a152fa7d6` · SHA-256 `81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Quantization.Core
import Mathlib.Tactic.DeriveFintype

/-!
# Finite quantization tests

Test-only examples for declarative and array-backed quantizers.
-/

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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a39cf7917f49233f675e82b9fe741cc317c90945290e6210e57b1bacdfc7384 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
