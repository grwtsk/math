# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OwnerAuthority.Variantfe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb4bd9de06331b9eabc37a32571aa141aef70a81` · SHA-256 `fe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Owner authority

This module is deliberately not imported by the graph-access core.  Owner
commit authority is supplied only by the external state owner.
-/

namespace Mathematics.GraphAccess.Owner

inductive OwnerAuthority
  | commit
deriving DecidableEq, Repr

end Mathematics.GraphAccess.Owner
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55b3820c790700aba350450819ae0bff6b09882a13bdbadb43e373f510324230 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OwnerAuthority/Variantfe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
