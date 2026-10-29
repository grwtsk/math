# Aesop Cat — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `549cd69b92adb7fb856cecf061c4d62fb35ee171` · SHA-256 `c1bf8f8c0e860856bc5f9d73ef8718fa48ef0c54b4c3a0ddc501f80470052745`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.CategoryTheory.Category.Basic

structure Foo where
  x : Nat
  w : x = 37 := by aesop_cat

/-- warning: declaration uses 'sorry' -/
#guard_msgs in
example : Foo where
  x := sorry

/--
error: could not synthesize default value for field 'w' of 'Foo' using tactics
---
error: tactic 'aesop' failed, failed to prove the goal after exhaustive search.
Initial goal:
  ⊢ 35 = 37
Remaining goals after safe rules:
  ⊢ False
-/
#guard_msgs in
example : Foo where
  x := 35
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4101c639d8be20cf75eac6a30f9c33794874a21977c15476ae6df056831da50a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AesopCat/Variantc1bf8f8c0e860856bc5f9d73ef8718fa48ef0c54b4c3a0ddc501f80470052745.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
