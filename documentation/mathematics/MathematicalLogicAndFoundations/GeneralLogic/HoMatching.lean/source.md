# Ho Matching — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f58210a968e3c9d5debfacbb9745632bbfc88314` · SHA-256 `bb67379eac18e7ef4a8f546b4df642dbb9cbd7d5b7fc6b5433e22daf62e797d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
import Lean.Elab.Command
open Qq Lean

-- TODO: this linter crashes on the `def` below
set_option linter.constructorNameAsVariable false in
def turnExistsIntoForall : Q(Prop) → MetaM Q(Prop)
  | ~q(∃ x y, $p x y) => return q(∀ x y, $p x y)
  | e => return e

/-- info: ∀ (x : String) (y : Nat), x.length ≤ y + 42 -/
#guard_msgs in
run_cmd Elab.Command.liftTermElabM do
  Lean.logInfo <| ← turnExistsIntoForall q(∃ a b, String.length a ≤ b + 42)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc78ae9fd057d9fec6f65bf226d9af2b5c6509e0192ec0f0ba173d532cb420b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HoMatching/Variantbb67379eac18e7ef4a8f546b4df642dbb9cbd7d5b7fc6b5433e22daf62e797d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
