# Complete source: GRWTSK.Analysis.Interpolation.Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d98527e3c944f3fbc260f81e4b35877b2ecf8a1c` · SHA-256 `1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GammaBridge.Exact
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Tactic

/-! # Affine Gamma interpolation -/

namespace Mathematics.GammaBridge

variable {E : Type*} [AddCommMonoid E] [Module ℝ E]

def linear (left right : E) (time : ℝ) : E :=
  (1 - time) • left + time • right

@[simp] theorem left_endpoint (left right : E) :
    linear left right 0 = left := by
  simp [linear]

@[simp] theorem right_endpoint (left right : E) :
    linear left right 1 = right := by
  simp [linear]

def exactLinear (id : GammaBridgeId) (left right : E) : Exact E where
  id := id
  path := linear left right
  left := left
  right := right
  left_endpoint := left_endpoint left right
  right_endpoint := right_endpoint left right

def scalarLinear (left right time : ℝ) : ℝ :=
  (1 - time) * left + time * right

theorem monotone
    {left right first second : ℝ}
    (hendpoints : left ≤ right)
    (htime : first ≤ second) :
    scalarLinear left right first ≤ scalarLinear left right second := by
  have hproduct :
      0 ≤ (second - first) * (right - left) :=
    mul_nonneg (sub_nonneg.mpr htime) (sub_nonneg.mpr hendpoints)
  dsimp [scalarLinear]
  nlinarith

end Mathematics.GammaBridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=627c8b961ea35fd66186e9d809f2e5e742d0213f9b51a1507381f7392bb3a3b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Interpolation/Variant1dd68421096b2fea52a69c73d4959600bd2b150a9a8671f3a6787bbc17c1b8c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
