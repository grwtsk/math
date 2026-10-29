# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InferParam.Varianteeaa7bdea3a29aaf80620c7c058fedc3622ccbd3742dd72819de8f32f8ac63f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `835574cb0dec92c7a6e8d0659d4e90196195e838` · SHA-256 `eeaa7bdea3a29aaf80620c7c058fedc3622ccbd3742dd72819de8f32f8ac63f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.InferParam

namespace InferParamTest

theorem zero_le_add (a : Nat) (ha : 0 ≤ a := Nat.zero_le a) : 0 ≤ a + a := calc
  0 ≤ a := ha
  _ ≤ a + a := Nat.le_add_left _ _

theorem zero_le_add' (a : Nat) (ha : 0 ≤ a := by decide) : 0 ≤ a + a := zero_le_add a ha

example : 0 ≤ 2 + 2 := by
  fail_if_success infer_param
  decide

example : 0 ≤ 2 + 2 := by
  apply zero_le_add
  infer_param

example : 0 ≤ 2 + 2 := by
  apply zero_le_add'
  infer_param

end InferParamTest
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14390e011ed65b1014819d0981811afaae41d52442c8a7c14c1814c22e3271f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferParam/Varianteeaa7bdea3a29aaf80620c7c058fedc3622ccbd3742dd72819de8f32f8ac63f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
