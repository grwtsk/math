# Source Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7def7797e495a44c6f65922b4e787c7371158821` · SHA-256 `4ae07a328afae9277b4b1bb3f5d086ea00669debb30ef13149bfd2ddbed5fd75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

import Mathlib.Init

public section

structure Foo where _mkInternal :: x : Nat

-- We can use internal constructors in the module we defined them in
def e : Foo := ⟨4⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e69b37cb77052264e8954ec85f5612db90bb8e80ee5b4ec889a8226467102ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Source/Variant4ae07a328afae9277b4b1bb3f5d086ea00669debb30ef13149bfd2ddbed5fd75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
