# Derive Countable Module Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e38c933abba2f2bcae741820c65663ffffb287e3` · SHA-256 `9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

import Mathlib.Basic.Countable.Basic
import Mathlib.Tactic.DeriveCountable

/-!
# Regression test: `deriving Countable` under the module system

The deriving handler emits user-facing code that mentions a few helper lemmas.
Under the module system, marking those helpers `private` makes them invisible
to importers (without `import all`), so `deriving Countable` failed with
`Unknown constant '_private.Mathlib.Tactic.DeriveCountable.0.…cons_eq_imp_init'`.

These tests cover the single-constructor MWE from the bug report and a
recursive case that exercises `cons_eq_imp` and `pair_encode_step`.
-/

namespace Test

inductive Single where
  | test
  deriving Countable

example : Countable Single := inferInstance

inductive Tree where
  | leaf (n : Nat)
  | node (l r : Tree)
  deriving Countable

example : Countable Tree := inferInstance

end Test
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e478a6bf1702feec693f6305df3e6921321bde20488e2f56ae413f8dccd3f43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountableModule/Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
