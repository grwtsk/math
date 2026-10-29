# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clear.Variant6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d872581a51c338e45060626da893db687ed87223` · SHA-256 `6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.ClearExclamation

set_option linter.unusedVariables false

-- Most basic test
example (delete_this : Nat) (_delete_this_dep : delete_this = delete_this) : Nat := by
  clear! delete_this
  fail_if_success assumption
  exact 0

-- Confirms clear! deletes class instances
example [delete_this : Inhabited Nat] : Inhabited Nat := by
  clear! delete_this
  fail_if_success assumption
  infer_instance

-- Confirms clear! can clear the dependencies of multiple hypotheses
example (delete_this : Nat) (delete_this2 : Nat) (_delete_this_dep : delete_this = delete_this2) :
    Nat := by
  clear! delete_this delete_this2
  fail_if_success assumption
  exact 0

-- Confirms that clear! does not delete independent hypotheses
example (delete_this : Nat) (dont_delete_this : Int) : Nat := by
  clear! delete_this
  fail_if_success assumption
  exact dont_delete_this.toNat

-- Confirms that clear! only deletes dependencies in the right direction
example (dont_delete_this : Nat) (delete_this : dont_delete_this = dont_delete_this) : Nat := by
  clear! delete_this
  assumption
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1007f06e450cd45af609e442e931ae0df9e51f2943c062fe35fb2a69f42464e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clear/Variant6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
