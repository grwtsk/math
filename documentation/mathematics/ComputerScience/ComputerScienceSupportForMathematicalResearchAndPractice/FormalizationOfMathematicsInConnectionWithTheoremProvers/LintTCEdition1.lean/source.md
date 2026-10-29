# Lint TCEdition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ee739134ef90067269a0dd2b79d583a3c83bf05` · SHA-256 `0dedd781ec5b03aa8acb4cdd50ba88c31a13bed0a3a63d8e57cadd8a154b29e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Lint.TypeClass
open Std.Tactic.Lint

namespace A
local instance impossible {α β : Type} [Inhabited α] : Nonempty α := ⟨default⟩
#eval do guard (← impossibleInstance.test ``impossible).isSome
end A

namespace B
instance bad : Nat := 1
#eval do guard (← nonClassInstance.test ``bad).isSome
instance good : Inhabited Nat := ⟨1⟩
#eval do guard (← nonClassInstance.test ``good).isNone
end B
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b953caa6614a6d1ea857b1e14e804b9acfb143638eb8f9f962d8f6899b29b7d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintTC/Variant0dedd781ec5b03aa8acb4cdd50ba88c31a13bed0a3a63d8e57cadd8a154b29e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
