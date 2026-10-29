# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectHiddenBatchUpdateNegative.Variante9dce27f000cdbe7f61ce9ff18ba4bff22f90750c1c8b04764d584614dde4685

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b61b9ed2a6ab17528980188eac0d9bda01cf2a61` · SHA-256 `e9dce27f000cdbe7f61ce9ff18ba4bff22f90750c1c8b04764d584614dde4685`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore
open GRWTSK.Interfaces.OptionalAdapterGate
example {Key : Type} [DecidableEq Key] {L M : Ledger Key}
    (P : AcceptedPlan L M) (key : Key) : M key = L key :=
  P.apply_eq_of_not_touches
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40299582d904000f0ea75795ed16f7efae1190394a58c2054d1d79960a9fa72d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectHiddenBatchUpdateNegative/Variante9dce27f000cdbe7f61ce9ff18ba4bff22f90750c1c8b04764d584614dde4685.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
