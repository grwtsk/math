# The Next Consumer Of Arbitrarily Small Zero Strips — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86ee1618297010f43eca4c39c6a2def219154937` · SHA-256 `68254d9307f96669ef6983c9e11c7506158908edcdfa3280fdc30c314f240384`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Definitions
import Mathlib.Tactic

/-!
# The next consumer of arbitrarily small zero strips

The rate-extension discussion in audited RH conversation Batch 01 permits a
different eventual polynomial constant and threshold at each stage. Its final
consumer only needs strips with widths tending to zero; it does not need one
constant uniform across all stages. This module proves that final implication
for Mathlib's unchanged RH target. The analytic production of each strip is a
separate unproved obligation, not an axiom in this file.

Human direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ZeroStripConsumer

open FormalResearch.RiemannHypothesis

/-- The exact source-zero predicate is retained at every stage. -/
def ZeroStrip (η : ℝ) : Prop :=
  ∀ s : ℂ, NontrivialZetaZero s → |s.re - 1 / 2| ≤ η / 2

/-- Arbitrarily small proved strips imply the literal Mathlib RH proposition. -/
theorem arbitrarily_small_strips_imply_rh
    (h : ∀ η : ℝ, 0 < η → ZeroStrip η) : RiemannHypothesis := by
  intro s hz hn hp
  have hs : NontrivialZetaZero s := ⟨hz, hn, hp⟩
  by_contra hre
  have hd : 0 < |s.re - 1 / 2| := abs_pos.mpr (sub_ne_zero.mpr hre)
  have hb := h |s.re - 1 / 2| hd s hs
  linarith

/-- A fixed seed strip is a single stage and does not give an automatic gain. -/
theorem seed_rate_returns_seed :
    (1 / 2 : ℝ) + (3 / 4) / 2 = 7 / 8 := by norm_num

end GRWTSK.RiemannHypothesis.Conversation.ZeroStripConsumer
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=886a34ebf7b0eda91a62e5c157f7c3e92fde4ba10c82a69ef144137828415728 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroStripConsumer/Variant68254d9307f96669ef6983c9e11c7506158908edcdfa3280fdc30c314f240384.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
