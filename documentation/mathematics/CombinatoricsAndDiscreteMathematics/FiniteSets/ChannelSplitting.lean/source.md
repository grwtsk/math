# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteSets.ChannelSplitting

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24a87668f8e50d762bf4388aed8c40ebf2278bfa` · SHA-256 `9319b6ea1285efd9cf3e85916f0b45a5d7abba7a4654502ce338ee026cbdf33b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Lean imports retain upstream authorship and licensing. -/
import Init

/-! Predicate channels split a signal by membership. Channels may overlap.
The residual channel preserves unmatched signals. Routing supplies no proof
of the payload. Optical multiplexing is an analogy for these finite predicates;
no physical fiber, wavelength, interference or capacity theorem is claimed. -/
set_option autoImplicit false

namespace GRWTSK.Combinatorics.FiniteSets.ChannelSplitting

def Residual {Signal Channel : Type} (route : Channel → Signal → Prop)
    (signal : Signal) : Prop := ∀ channel, ¬ route channel signal

theorem lossless {Signal Channel : Type} (route : Channel → Signal → Prop)
    (signal : Signal) : (∃ channel, route channel signal) ∨ Residual route signal := by
  classical
  by_cases h : ∃ channel, route channel signal
  · exact Or.inl h
  · exact Or.inr (by intro channel hc; exact h ⟨channel, hc⟩)

theorem filter_split {Signal : Type} (first second : Signal → Prop) (signal : Signal) :
    (first signal ∧ second signal) ∨ (first signal ∧ ¬ second signal) ∨
    (¬ first signal ∧ second signal) ∨ (¬ first signal ∧ ¬ second signal) := by
  classical
  by_cases h₁ : first signal <;> by_cases h₂ : second signal
  · exact Or.inl ⟨h₁, h₂⟩
  · exact Or.inr (Or.inl ⟨h₁, h₂⟩)
  · exact Or.inr (Or.inr (Or.inl ⟨h₁, h₂⟩))
  · exact Or.inr (Or.inr (Or.inr ⟨h₁, h₂⟩))

theorem residual_disjoint {Signal Channel : Type} {route : Channel → Signal → Prop}
    {signal : Signal} (h : Residual route signal) (channel : Channel) :
    ¬ route channel signal := h channel

theorem routing_does_not_imply_payload :
    ∃ route : Unit → Unit → Prop, (∃ channel, route channel ()) ∧ ¬ False :=
  ⟨fun _ _ => True, ⟨(), True.intro⟩, fun h => h⟩

end GRWTSK.Combinatorics.FiniteSets.ChannelSplitting
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1763251e9eb51059f0006cbae62a6afdd72c3db28c3a55aa3d7c876ae4fd616 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSets/ChannelSplitting.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
