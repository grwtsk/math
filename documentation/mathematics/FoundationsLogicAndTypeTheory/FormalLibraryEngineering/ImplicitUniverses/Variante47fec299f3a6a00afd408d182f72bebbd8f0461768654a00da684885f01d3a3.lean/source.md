# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImplicitUniverses.Variante47fec299f3a6a00afd408d182f72bebbd8f0461768654a00da684885f01d3a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0dce6e04a607223f23e7f3ead3c70888d1c617a4` · SHA-256 `e47fec299f3a6a00afd408d182f72bebbd8f0461768654a00da684885f01d3a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Basic
import Mathlib.Tactic.SuccessIfFailWithMsg

example (x y : Type*) : sorry := by
  success_if_fail_with_msg
"type mismatch
  y
has type
  Type u_2 : Type (u_2 + 1)
but is expected to have type
  Type u_1 : Type (u_1 + 1)" (exact x = y)
  sorry

example (x : Sort*) : sorry := by
  success_if_fail_with_msg
"type mismatch
  Prop
has type
  Type : Type 1
but is expected to have type
  Sort u_1 : Type u_1" (exact x = Prop)
  sorry

example : sorry := by
  success_if_fail_with_msg
"type mismatch
  y
has type
  Type u_2 : Type (u_2 + 1)
but is expected to have type
  Type u_1 : Type (u_1 + 1)" (exact ∀ x y : Type*, x = y)
  sorry

example : sorry := by
 success_if_fail_with_msg
"type mismatch
  Prop
has type
  Type : Type 1
but is expected to have type
  Sort u_1 : Type u_1" (exact ∀ x : Sort*, x = Prop)
 sorry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2201b84379b91630c9beed9145c80677063e5044e9631d0805b22aec11f5de10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImplicitUniverses/Variante47fec299f3a6a00afd408d182f72bebbd8f0461768654a00da684885f01d3a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
