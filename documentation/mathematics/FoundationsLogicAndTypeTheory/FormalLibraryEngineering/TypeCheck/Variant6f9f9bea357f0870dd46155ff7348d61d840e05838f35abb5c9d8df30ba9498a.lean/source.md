# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeCheck.Variant6f9f9bea357f0870dd46155ff7348d61d840e05838f35abb5c9d8df30ba9498a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1345ea5d983f1e2166ba314b5afdb3e0fd840d2e` · SHA-256 `6f9f9bea357f0870dd46155ff7348d61d840e05838f35abb5c9d8df30ba9498a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.TypeCheck

set_option linter.unusedTactic false

/-- A term where `inferType` returns `Prop`, but which does not type check. -/
elab "wrong" : term =>
  return Lean.mkApp2 (.const ``id [.zero]) (.sort .zero) (.app (.sort .zero) (.sort .zero))

/--
info: Type
---
info: Bool
---
info: Nat
---
info: Nat
---
info: Prop
---
info: Prop
---
info: Nat → Nat
---
info: List Nat
-/
#guard_msgs in
example : True := by
  type_check Nat -- Type
  type_check Bool.true -- Bool
  type_check nat_lit 1 -- Nat
  type_check (1 : Nat) -- Nat
  type_check (True :) -- Prop
  type_check ∀ x y : Nat, x = y -- Prop
  type_check fun x : Nat => 2 * x + 1 -- Nat -> Nat
  type_check [1]
  fail_if_success type_check wrong
  trivial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ead6c80b7f15ae72e2698cc15a643afe3527e4ddf52630375982864c0faba241 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeCheck/Variant6f9f9bea357f0870dd46155ff7348d61d840e05838f35abb5c9d8df30ba9498a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
