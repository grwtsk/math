# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Classical.Variant06419a2c55167172257307f872ea61c474fefb08b88b448901fc121f72a14712

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e57be62097fc772e8964be804c49d9fd6467f99` · SHA-256 `06419a2c55167172257307f872ea61c474fefb08b88b448901fc121f72a14712`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Classical
import Mathlib.Tactic.PermuteGoals
import Std.Tactic.GuardExpr

noncomputable def foo : Bool := by
  fail_if_success have := ∀ p, decide p -- no classical in scope
  classical!
  have := ∀ p, decide p -- uses the classical instance
  -- uses the classical instance even though `0 < 1` is decidable
  guard_expr decide (0 < 1) = @decide (0 < 1) (‹(a : Prop) → Decidable a› _)
  exact decide (0 < 1)

def bar : Bool := by
  fail_if_success have := ∀ p, decide p -- no classical in scope
  classical
  have := ∀ p, decide p -- uses the classical instance
  guard_expr decide (0 < 1) = @decide (0 < 1) (Nat.decLt 0 1)
  exact decide (0 < 1) -- uses the decidable instance

-- double check no leakage
def bar' : Bool := by
  fail_if_success have := ∀ p, decide p -- no classical in scope
  exact decide (0 < 1) -- uses the decidable instance

-- check that classical respects tactic blocks
def bar'' : Bool := by
  fail_if_success have := ∀ p, decide p -- no classical in scope
  on_goal 1 =>
    classical
    have := ∀ p, decide p -- uses the classical instance
  fail_if_success have := ∀ p, decide p -- no classical in scope again
  exact decide (0 < 1) -- uses the decidable instance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a30c708574bd9a23413c74fed25abe83a7856e03d2d0d419b42cc47ec5829d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classical/Variant06419a2c55167172257307f872ea61c474fefb08b88b448901fc121f72a14712.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
