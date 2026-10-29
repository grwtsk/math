# Cell — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65f6bb02549a18e1fcb416cc561aaff3e36683a3` · SHA-256 `8cc363e5fba60dd07f723453232c86b15d9f5b676a1b97e7d5511d69e2251d77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity

/-! # Dependency-declared reactive cells -/

namespace Mathematics.Reactive

universe u v

inductive DirtyClass
  | semantic
  | representation
  | runtime
  deriving DecidableEq, Repr

/-- A reactive derivation records every semantic dependency explicitly. -/
structure Cell (Value : Type u) where
  id : StableId
  revision : Nat
  value : Value
  dependencies : List ElementRef
  dirtyClass : DirtyClass

def Cell.map {α : Type u} {β : Type v}
    (cell : Cell α) (id : StableId) (transform : α → β) : Cell β where
  id := id
  revision := cell.revision
  value := transform cell.value
  dependencies := cell.dependencies
  dirtyClass := cell.dirtyClass

end Mathematics.Reactive
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69f4199d6bfe853e50a20fa66601a95390db5942656141056f2ef2a9a20f9f0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variant8cc363e5fba60dd07f723453232c86b15d9f5b676a1b97e7d5511d69e2251d77.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
