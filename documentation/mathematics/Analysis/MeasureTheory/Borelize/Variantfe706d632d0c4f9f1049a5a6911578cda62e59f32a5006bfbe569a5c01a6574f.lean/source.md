# Complete source: GRWTSK.Analysis.MeasureTheory.Borelize.Variantfe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1c24d7ed7ce75099a1a11906ca6ceac4c0ab4c1` · SHA-256 `fe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic

set_option autoImplicit true

example [TopologicalSpace α] [inst : MeasurableSpace α] [BorelSpace α] :
    MeasurableSet (∅ : Set α) := by
  guard_target = @MeasurableSet α inst ∅
  borelize α
  guard_target = @MeasurableSet α (borel α) ∅
  apply MeasurableSet.empty

example [TopologicalSpace α] : True := by
  borelize α
  have h : MeasurableSet (∅ : Set α) := MeasurableSet.empty
  guard_hyp h : @MeasurableSet α (borel α) ∅
  trivial

example : True := by
  obtain ⟨α, ⟨hα⟩⟩ : ∃ α : Type, Nonempty (TopologicalSpace α) := ⟨ℕ, ⟨inferInstance⟩⟩
  borelize α
  have h : MeasurableSet (∅ : Set α) := MeasurableSet.empty
  guard_hyp h : @MeasurableSet α (borel α) ∅
  trivial

example : True := by
  set α := ℕ
  borelize α
  have h : MeasurableSet (∅ : Set α) := MeasurableSet.empty
  guard_hyp h : @MeasurableSet α (borel α) ∅
  trivial

example : True := by
  have h1 : MeasurableSet (∅ : Set ℕ) := MeasurableSet.empty
  guard_hyp h1 : @MeasurableSet ℕ Nat.instMeasurableSpace ∅
  borelize ℕ
  have h2 : MeasurableSet (∅ : Set ℕ) := MeasurableSet.empty
  guard_hyp h2 : @MeasurableSet ℕ (borel ℕ) ∅
  trivial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28163c69d0a2a5e1ee868d048812a72b1d4bfc6452fd8ea898430cd1b977781d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Borelize/Variantfe706d632d0c4f9f1049a5a6911578cda62e59f32a5006bfbe569a5c01a6574f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
