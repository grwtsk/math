# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalStratum.Variant42ef50825aababd4b0b120870d6ab294d92c9d30fb6be5493c93dcec698436f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b964905e1dc82aa7580267b57e00a5eeb614208` · SHA-256 `42ef50825aababd4b0b120870d6ab294d92c9d30fb6be5493c93dcec698436f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Ordinal-stratum access references
-/

namespace Mathematics.GraphAccess

structure OrdinalStratumAccessRef where
  cutRef : String
  stratumRef : String
  localRankRef : Option String
  persistentIdentityRef : String
deriving DecidableEq, Repr

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=876334b5ed10bab80ff41795c3e67930e3cd1978ee58aeb43e925a823110a1fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalStratum/Variant42ef50825aababd4b0b120870d6ab294d92c9d30fb6be5493c93dcec698436f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
