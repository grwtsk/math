# Vector Gate — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa5444165951859141086d0e9e05cdf4482b8ab0` · SHA-256 `a532b99d6d093ad8c72c767ce23fc91f91d3bc878cdcb1f0f73afd704f89354e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Data.Vector

/-! ### Testing scans over `Vector`. -/

#guard (Vector.scanr (· + ·) 0 (#v[1, 2, 3] : Vector Nat 3)).toList == [6, 5, 3, 0]

/-! ### Testing decidable quantifiers for `Vector`. -/

example : ∃ v : Vector Bool 6, v.toList.count true = 3 := by decide

inductive Gate : Nat → Type
| const : Bool → Gate 0
| if : ∀ {n}, Gate n → Gate n → Gate (n + 1)

namespace Gate

def and : Gate 2 := .if (.if (.const true) (.const false)) (.if (.const false) (.const false))

def eval (g : Gate n) (v : Vector Bool n) : Bool :=
  match g, v with
  | .const b, _ => b
  | .if g₁ g₂, v => if v.1.back! then eval g₁ v.pop else eval g₂ v.pop

example : ∀ v, and.eval v = (v[0] && v[1]) := by decide
example : ∃ v, and.eval v = false := by decide

end Gate
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cac631672a5fdab7378c16ed2058a150265d10b761079f8c79762fdc38167249 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Varianta532b99d6d093ad8c72c767ce23fc91f91d3bc878cdcb1f0f73afd704f89354e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
