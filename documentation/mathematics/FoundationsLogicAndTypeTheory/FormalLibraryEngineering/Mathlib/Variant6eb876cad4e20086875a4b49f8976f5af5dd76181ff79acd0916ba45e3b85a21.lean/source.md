# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mathlib.Variant6eb876cad4e20086875a4b49f8976f5af5dd76181ff79acd0916ba45e3b85a21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd0b69b67bd733452107d5661d60ebfdc8ff29cf` · SHA-256 `6eb876cad4e20086875a4b49f8976f5af5dd76181ff79acd0916ba45e3b85a21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

-- We verify that `exact?` copes with all of Mathlib.
-- On `v4.7.0-rc1` this revealed a cache corruption problem.

/-- info: Try this: exact Nat.one_pos -/
#guard_msgs in
example : 0 < 1 := by exact?
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59be79454a9989392856cb3e8c4d8ebab13731a90b1a8b2778c6ae0ad96d38ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mathlib/Variant6eb876cad4e20086875a4b49f8976f5af5dd76181ff79acd0916ba45e3b85a21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
