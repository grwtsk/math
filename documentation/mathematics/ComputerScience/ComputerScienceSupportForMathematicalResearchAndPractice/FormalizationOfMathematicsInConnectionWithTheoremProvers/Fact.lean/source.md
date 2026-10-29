# Fact — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f855dc39737475f829b04bf8e708680744be3c04` · SHA-256 `3049736702ff04758ca032800fd7f7739497a2c0a69b64b804472b77c80fcca3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Gist

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure TimeScope where
  validAt? : Option String
  invalidAt? : Option String
  createdAt? : Option String
  expiredAt? : Option String
deriving DecidableEq, Repr

structure TimeScopedFact where
  subject : String
  predicate : String
  object : String
  vertex : MemoryVertex
  scope : TimeScope
  confidence : Nat
  factVertex : vertex.kind = MemoryKind.fact

def TimeScopedFact.tripleKey (f : TimeScopedFact) : String :=
  f.subject ++ "|" ++ f.predicate ++ "|" ++ f.object

end Think.RadoProjectedModularHeatflow.MemoryCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e38127e7bcbd1ee45afcc1b369b2991474c25ac5dfd27aac2547564af31eb493 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fact/Variant3049736702ff04758ca032800fd7f7739497a2c0a69b64b804472b77c80fcca3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
