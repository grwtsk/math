# Type Graph — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58d5c7433bcf2b95af5ece091de4423ef1bc740c` · SHA-256 `b9954377e8fc569a27a994e502154c341cec821f737e535657fccb4e04e03b63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic
import Noeoueue.Memory.Identity

namespace Noeoueue.TypeMemory

structure TheoremHyperedge (alpha : Type) where
  theoremId : TheoremId
  statementSupport : Finset alpha
  proofDependencies : Finset alpha
  deriving DecidableEq

/-- `type-memory://noeoueue/type-graph@1`: repeated syntax is one statement incidence. -/
theorem statement_support_idempotent {alpha} [DecidableEq alpha] (s : Finset alpha) :
    s ∪ s = s := by simp

end Noeoueue.TypeMemory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=974532dd24ba81ed2c7a2b863d05398bdd41852259c6af25e49f96350636b069 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TypeGraph/Variantb9954377e8fc569a27a994e502154c341cec821f737e535657fccb4e04e03b63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
