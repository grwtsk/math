# Max Prime Fac Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d364fe2479268e770b8891eaf92148a1e75bf43d` · SHA-256 `a07acfc1dc08186ffb2b5e8f1e0de12ace66b03d8ec3755b8f0ec7f8ef9a0faa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

meta import Mathlib.Data.Nat.MaxPrimeFac

#guard Nat.maxPrimeFac 0 = 0
#guard Nat.maxPrimeFac 1 = 1
#guard Nat.maxPrimeFac 12 = 3
#guard Nat.maxPrimeFac 97 = 97
#guard Nat.maxPrimeFac 125 = 5
#guard Nat.maxPrimeFac 360 = 5
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=176802038b432615f7b4a8a65fa9ff9e256a3baf8200b61b7f82ca02e6caa3f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MaxPrimeFac/Varianta07acfc1dc08186ffb2b5e8f1e0de12ace66b03d8ec3755b8f0ec7f8ef9a0faa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
