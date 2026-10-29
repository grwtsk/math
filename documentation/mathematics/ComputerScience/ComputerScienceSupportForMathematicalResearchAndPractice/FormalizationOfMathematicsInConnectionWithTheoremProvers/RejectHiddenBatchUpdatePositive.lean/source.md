# Reject Hidden Batch Update Positive — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3281689e9decaa1e37a0810bdec3a2adbedc8d8c` · SHA-256 `c22773cb50eb28b1dc411357ee5beccb4e9a6014e30539b6998fd4dfc5e88ac1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore
open GRWTSK.Interfaces.OptionalAdapterGate
example {Key : Type} [DecidableEq Key] {L M : Ledger Key}
    (P : AcceptedPlan L M) (key : Key) (h : ¬ P.Touches key) : M key = L key :=
  P.apply_eq_of_not_touches h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a72ce25a40007e883c98736b64b817753ea5e47c5b181dcfae13277e89eb1a28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectHiddenBatchUpdatePositive/Variantc22773cb50eb28b1dc411357ee5beccb4e9a6014e30539b6998fd4dfc5e88ac1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
